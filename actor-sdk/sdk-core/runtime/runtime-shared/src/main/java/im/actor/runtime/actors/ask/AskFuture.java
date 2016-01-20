package im.actor.runtime.actors.ask;

import im.actor.runtime.actors.ActorRef;
import im.actor.runtime.actors.Future;

public class AskFuture extends Future {

    private ActorRef receiver;
    private long id;

    public AskFuture(long id, ActorRef receiver) {
        this.receiver = receiver;
        this.id = id;
    }

    @Override
    protected void deliverResult() {
        if (isSuccess()) {
            receiver.send(new AskResult(id, getResult()));
        } else {
            receiver.send(new AskError(id, getException()));
        }
    }
}
