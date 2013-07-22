package com.javis.entity;

import java.util.Date;

public class Reply {
	private long id;
	private long userID;
	private String replyDescription;
	private Date dateTime;
	private long answerID;
	
	public Reply(long userID, String replyDescription, Date dateTime, long answerID) {
		this.userID = userID;
		this.replyDescription = replyDescription;
		this.dateTime = dateTime;
		this.answerID = answerID;
	}
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public long getUserId() {
		return userID;
	}
	
	public void setUserId(long userID) {
		this.userID = userID;
	}
	
	public String getReplyDescription() {
		return replyDescription;
	}
	
	public void setReplyDescription(String replyDescription) {
		this.replyDescription = replyDescription;
	}
	
	public Date getDateTime() {
		return dateTime;
	}
	
	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}

	public long getAnswerId() {
		return answerID;
	}

	public void setAnswerId(long answerID) {
		this.answerID = answerID;
	}
	
}
