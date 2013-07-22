package com.javis.entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Set;

public class ReplyManager {
	private static HashMap<Long, Reply> replies = new HashMap<Long, Reply>();
	
	public static Reply getReply(long id) {
		return replies.get(id);
	}
	
	public static long getLastId() {
		Set<Long> replyIDSet = replies.keySet();
		int size = replyIDSet.size();
		
		Object[] replyIDArray = replyIDSet.toArray();
		long lastID = (long)replyIDArray[size-1];
		return lastID;
	}
	
	public static void addReply(long userID, String replyDescription, long answerID) {
		Date date = new Date();
		Reply reply = new Reply(userID, replyDescription, date, answerID);
		long lastIndex = getLastId();
		long newID = lastIndex + 1;
		reply.setId(newID);
		replies.put(newID, reply);
	}
	
	public static void deleteReply(long id) {
		replies.remove(id);
	}
	
	public static void editReply(long replyID, String replyDescription) {
		Reply reply = replies.get(replyID);
		reply.setReplyDescription(replyDescription);
	}
	
	public static long getUserId(long id) {
		Reply reply = replies.get(id);
		return reply.getUserId();
	}
	
	public static String getReplyDescription(long id) {
		Reply reply = replies.get(id);
		return reply.getReplyDescription();
	}
	
	public static Date getDateTime(long id) {
		Reply reply = replies.get(id);
		return reply.getDateTime();
	}
	
	public static long getAnswerId(long id) {
		Reply reply = replies.get(id);
		return reply.getAnswerId();
	}
}