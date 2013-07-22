package com.javis.entity;

import java.util.Date;

public class Report {
	private long id;
	private Date dateTime;
	private String email;
	private long questionID;
	private long answerID;
	
	public Report(Date dateTime, String email, long questionID, long answerID) {
		this.dateTime = dateTime;
		this.email = email;
		this.questionID = questionID;
		this.answerID = answerID;
	}
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public Date getDateTime() {
		return dateTime;
	}
	
	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public long getQuestionId() {
		return questionID;
	}

	public void setQuestionId(long questionID) {
		this.questionID = questionID;
	}

	public long getAnswerId() {
		return answerID;
	}

	public void setAnswerId(long answerID) {
		this.answerID = answerID;
	}
}
