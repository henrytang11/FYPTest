package com.javis.entity;

public class Notification {
	private long id;
	private long answerID;
	private String notificationDescription;
	private boolean seen;
	
	public Notification(long answerID, String notificationDescription) {
		this.answerID = answerID;
		this.notificationDescription = notificationDescription;
		seen = false;
	}
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}

	public long getAnswerId() {
		return answerID;
	}

	public void setAnswerId(long answerID) {
		this.answerID = answerID;
	}

	public String getNotificationDescription() {
		return notificationDescription;
	}

	public void setNotificationDescription(String notificationDescription) {
		this.notificationDescription = notificationDescription;
	}

	public boolean isSeen() {
		return seen;
	}

	public void setSeen(boolean seen) {
		this.seen = seen;
	}
}
