package im.actor.server.social

import scala.concurrent.Future
import scala.concurrent._
import scala.concurrent.duration._
import scala.util.{ Success, Failure }

import akka.actor._
import akka.contrib.pattern.{ ClusterSharding, ShardRegion }
import akka.pattern.{ ask, pipe }
import akka.util.Timeout
import slick.driver.PostgresDriver.api._

import im.actor.server.persist

@SerialVersionUID(1L)
case class SocialManagerRegion(ref: ActorRef)

object SocialManager {
  private case class Envelope(userId: Int, payload: Message)

  private sealed trait Message

  @SerialVersionUID(1L)
  private case class RelationsNoted(userIds: Set[Int]) extends Message

  @SerialVersionUID(1L)
  private case class RelationNoted(userId: Int) extends Message

  @SerialVersionUID(1L)
  private case object GetRelations extends Message

  @SerialVersionUID(1L)
  private case class Relations(userIds: Set[Int])

  @SerialVersionUID(1L)
  private case object Ack

  private val idExtractor: ShardRegion.IdExtractor = {
    case env @ Envelope(userId, payload) ⇒ (userId.toString, env)
  }

  private val shardResolver: ShardRegion.ShardResolver = msg ⇒ msg match {
    case Envelope(userId, _) ⇒ (userId % 100).toString // TODO: configurable
  }

  private def startRegion(props: Option[Props])(implicit system: ActorSystem): SocialManagerRegion =
    SocialManagerRegion(ClusterSharding(system).start(
      typeName = "SocialManager",
      entryProps = props,
      idExtractor = idExtractor,
      shardResolver = shardResolver
    ))

  def startRegion()(implicit system: ActorSystem, db: Database): SocialManagerRegion =
    startRegion(Some(props))

  def startRegionProxy()(implicit system: ActorSystem): SocialManagerRegion =
    startRegion(None)

  def props(implicit db: Database) = Props(classOf[SocialManager], db)

  def recordRelations(userId: Int, relatedTo: Set[Int])(implicit
    region: SocialManagerRegion,
                                                        timeout: Timeout,
                                                        ec:      ExecutionContext): Future[Unit] = {
    region.ref.ask(Envelope(userId, RelationsNoted(relatedTo))) map (_ ⇒ ())
  }

  def recordRelation(userId: Int, relatedTo: Int)(implicit
    region: SocialManagerRegion,
                                                  timeout: Timeout,
                                                  ec:      ExecutionContext): Future[Unit] = {
    region.ref.ask(Envelope(userId, RelationNoted(relatedTo))) map (_ ⇒ ())
  }

  def getRelations(userId: Int)(implicit
    region: SocialManagerRegion,
                                timeout: Timeout,
                                ec:      ExecutionContext): Future[Set[Int]] = {
    region.ref.ask(Envelope(userId, GetRelations)).mapTo[Relations] map (_.userIds)
  }
}

class SocialManager(implicit db: Database) extends Actor with ActorLogging with Stash {
  import SocialManager._

  @SerialVersionUID(1L)
  private case class Initiated(userIds: Set[Int])

  implicit val ec: ExecutionContext = context.dispatcher

  context.setReceiveTimeout(15.minutes) // TODO: configurable

  def receive = {
    case env @ Envelope(userId, _) ⇒
      stash()

      db.run(persist.social.Relation.find(userId)) onComplete {
        case Success(userIds) ⇒
          self ! Initiated(userIds.toSet)
        case Failure(e) ⇒
          log.error(e, "Failed to load realations")
          context.stop(self)
      }

      context.become(stashing)
    case msg ⇒
      stash()
  }

  def stashing: Receive = {
    case Initiated(userIds: Set[Int]) ⇒
      unstashAll()
      context.become(working(userIds))
    case msg ⇒
      stash()
  }

  def working(userIds: Set[Int]): Receive = {
    case env @ Envelope(userId, RelationsNoted(notedUserIds)) ⇒
      val uniqUserIds = notedUserIds.diff(userIds).filterNot(_ == userId)

      if (uniqUserIds.nonEmpty) {
        context.become(working(userIds ++ uniqUserIds))
        db.run(persist.social.Relation.create(userId, uniqUserIds)).map(_ ⇒ Ack).pipeTo(sender())
      }
    case env @ Envelope(userId, RelationNoted(notedUserId)) ⇒
      if (!userIds.contains(userId) && userId != notedUserId) {
        context.become(working(userIds + userId))

        db.run(persist.social.Relation.create(userId, notedUserId)).map(_ ⇒ Ack).pipeTo(sender())
      } else {
        sender() ! Ack
      }
    case env @ Envelope(userId, GetRelations) ⇒
      sender() ! Relations(userIds)
    case ReceiveTimeout ⇒
      context.parent ! ShardRegion.Passivate(stopMessage = PoisonPill)
  }
}