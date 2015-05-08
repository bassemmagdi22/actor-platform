package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;

public class Group extends BserObject {

    private int id;
    private long accessHash;
    private String title;
    private Avatar avatar;
    private boolean isMember;
    private int creatorUid;
    private List<Member> members;
    private long createDate;

    public Group(int id, long accessHash, String title, Avatar avatar, boolean isMember, int creatorUid, List<Member> members, long createDate) {
        this.id = id;
        this.accessHash = accessHash;
        this.title = title;
        this.avatar = avatar;
        this.isMember = isMember;
        this.creatorUid = creatorUid;
        this.members = members;
        this.createDate = createDate;
    }

    public Group() {

    }

    public int getId() {
        return this.id;
    }

    public long getAccessHash() {
        return this.accessHash;
    }

    public String getTitle() {
        return this.title;
    }

    public Avatar getAvatar() {
        return this.avatar;
    }

    public boolean isMember() {
        return this.isMember;
    }

    public int getCreatorUid() {
        return this.creatorUid;
    }

    public List<Member> getMembers() {
        return this.members;
    }

    public long getCreateDate() {
        return this.createDate;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.id = values.getInt(1);
        this.accessHash = values.getLong(2);
        this.title = values.getString(3);
        this.avatar = values.optObj(4, new Avatar());
        this.isMember = values.getBool(6);
        this.creatorUid = values.getInt(8);
        List<Member> _members = new ArrayList<Member>();
        for (int i = 0; i < values.getRepeatedCount(9); i ++) {
            _members.add(new Member());
        }
        this.members = values.getRepeatedObj(9, _members);
        this.createDate = values.getLong(10);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.id);
        writer.writeLong(2, this.accessHash);
        if (this.title == null) {
            throw new IOException();
        }
        writer.writeString(3, this.title);
        if (this.avatar != null) {
            writer.writeObject(4, this.avatar);
        }
        writer.writeBool(6, this.isMember);
        writer.writeInt(8, this.creatorUid);
        writer.writeRepeatedObj(9, this.members);
        writer.writeLong(10, this.createDate);
    }

    @Override
    public String toString() {
        String res = "struct Group{";
        res += "id=" + this.id;
        res += ", avatar=" + (this.avatar != null ? "set":"empty");
        res += ", isMember=" + this.isMember;
        res += ", members=" + this.members.size();
        res += ", createDate=" + this.createDate;
        res += "}";
        return res;
    }

}
