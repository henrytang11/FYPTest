package com.javis.controller;

import com.javis.entity.*;

public class ReplyController {
	public static void addReply(long userID, String replyDescription, long answerID) {
		ReplyManager.addReply(userID, replyDescription, answerID);
	}
	
	public static void deleteReply(long id) {
		ReplyManager.deleteReply(id);
	}
	
	public static void editReply(long id, String replyDescription) {
		ReplyManager.editReply(id, replyDescription);
	}
	
	public static Reply getReply(long id) {
		return ReplyManager.getReply(id);
	}
}
