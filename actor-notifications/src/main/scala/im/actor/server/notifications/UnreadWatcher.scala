package im.actor.server.notifications

import scala.concurrent.{ Future, ExecutionContext }

import org.joda.time.DateTime
import slick.dbio.DBIO
import slick.driver.PostgresDriver.api._

import im.actor.server.models.PeerType
import im.actor.server.{ models, persist }

class UnreadWatcher(implicit db: Database, config: UnreadWatcherConfig, ec: ExecutionContext) {

  private val unreadTimeout = config.unreadTimeout.toMillis

  def getNotifications: Future[Seq[Notification]] = {
    val now = DateTime.now
    db.run {
      for {
        users ← persist.User.activeUsersIds
        tasks ← DBIO.sequence(users.map { userId ⇒
          for (data ← findUnread(userId, now)) yield if (data.isEmpty) None else Some(Notification(userId, data.toMap))
        })
      } yield tasks.flatten
    }
  }

  private def findUnread(userId: Int, now: DateTime) = {
    val dateToReadBefore = now.minus(unreadTimeout)
    for {
      dialogs ← persist.Dialog.findLastReadBefore(dateToReadBefore, userId)
      senderAndCount ← DBIO.sequence(dialogs.map { dialog ⇒
        for {
          exists ← persist.HistoryMessage.haveMessagesBetween(userId, dialog.peer, dialog.lastReadAt, dateToReadBefore)
          unreadCount ← persist.HistoryMessage.getUnreadCount(userId, dialog.peer, dialog.lastReadAt)
          senderName ← getNameByPeer(dialog.peer)
        } yield if (exists) Some(senderName → unreadCount) else None
      })
    } yield senderAndCount.flatten
  }

  private def getNameByPeer(peer: models.Peer) =
    if (peer.typ == PeerType.Private) persist.User.findName(peer.id)
    else persist.Group.findTitle(peer.id)

}
