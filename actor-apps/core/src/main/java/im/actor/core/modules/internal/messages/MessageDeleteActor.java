/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.core.modules.internal.messages;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import im.actor.core.api.ApiPeer;
import im.actor.core.api.OutPeer;
import im.actor.core.api.base.SeqUpdate;
import im.actor.core.api.rpc.RequestDeleteMessage;
import im.actor.core.api.rpc.ResponseSeq;
import im.actor.core.api.updates.UpdateMessageDelete;
import im.actor.core.entity.PeerEntity;
import im.actor.core.modules.ModuleContext;
import im.actor.core.modules.internal.messages.entity.Delete;
import im.actor.core.modules.internal.messages.entity.DeleteStorage;
import im.actor.core.modules.utils.ModuleActor;
import im.actor.core.network.RpcCallback;
import im.actor.core.network.RpcException;
import im.actor.runtime.storage.SyncKeyValue;

public class MessageDeleteActor extends ModuleActor {

    private SyncKeyValue syncKeyValue;
    private DeleteStorage deleteStorage;

    public MessageDeleteActor(ModuleContext context) {
        super(context);
        this.syncKeyValue = context.getMessagesModule().getCursorStorage();
    }

    @Override
    public void preStart() {
        super.preStart();
        byte[] data = syncKeyValue.get(CURSOR_DELETE);
        if (data != null) {
            try {
                deleteStorage = DeleteStorage.fromBytes(data);
            } catch (IOException e) {
                e.printStackTrace();
                deleteStorage = new DeleteStorage();
            }
        } else {
            deleteStorage = new DeleteStorage();
        }

        for (PeerEntity peer : deleteStorage.getPendingDeletions().keySet()) {
            Delete delete = deleteStorage.getPendingDeletions().get(peer);
            if (delete.getRids().size() > 0) {
                performDelete(peer, delete.getRids());
            }
        }
    }

    void saveStorage() {
        syncKeyValue.put(CURSOR_DELETE, deleteStorage.toByteArray());
    }

    public void performDelete(final PeerEntity peer, final List<Long> rids) {
        final OutPeer outPeer = buidOutPeer(peer);
        final ApiPeer apiPeer = buildApiPeer(peer);
        request(new RequestDeleteMessage(outPeer, rids), new RpcCallback<ResponseSeq>() {

            @Override
            public void onResult(ResponseSeq response) {
                if (deleteStorage.getPendingDeletions().containsKey(peer)) {
                    deleteStorage.getPendingDeletions().get(peer).getRids().removeAll(rids);
                    saveStorage();
                }

                updates().onUpdateReceived(new SeqUpdate(response.getSeq(),response.getState(),
                        UpdateMessageDelete.HEADER,new UpdateMessageDelete(apiPeer, rids).toByteArray()));
            }

            @Override
            public void onError(RpcException e) {

            }
        });
    }

    public void onDeleteMessage(PeerEntity peer, List<Long> rids) {
        // Add to storage
        if (!deleteStorage.getPendingDeletions().containsKey(peer)) {
            deleteStorage.getPendingDeletions().put(peer, new Delete(peer,new ArrayList<Long>()));
        }
        deleteStorage.getPendingDeletions().get(peer).getRids().addAll(rids);
        saveStorage();

        // Perform deletion
        performDelete(peer, rids);
    }

    @Override
    public void onReceive(Object message) {
        if (message instanceof DeleteMessage) {
            DeleteMessage deleteMessage = (DeleteMessage) message;
            ArrayList<Long> rids = new ArrayList<Long>();
            for (long l : deleteMessage.getRids()) {
                rids.add(l);
            }
            onDeleteMessage(deleteMessage.getPeer(), rids);
        } else {
            drop(message);
        }
    }

    public static class DeleteMessage {
        private PeerEntity peer;
        private long[] rids;

        public DeleteMessage(PeerEntity peer, long[] rids) {
            this.peer = peer;
            this.rids = rids;
        }

        public PeerEntity getPeer() {
            return peer;
        }

        public long[] getRids() {
            return rids;
        }
    }
}
