package com.javis.entity;

import java.util.Date;

public class Question {
	private long id;
	private String description;
	private String optionalDescription;
	private Date dateTime;
	private String email;
	private long topAnswerID;
	private int noOfAnswers;
	private long categoryID;
	
	public Question(String description, String optionalDescription, Date dateTime, String email, long categoryID) {
		this.description = description;
		this.dateTime = dateTime;
		this.optionalDescription = optionalDescription;
		this.email = email;
		this.categoryID = categoryID;
	}
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getOptionalDescription() {
		return optionalDescription;
	}
	
	public void setOptionalDescription(String optionalDescription) {
		this.optionalDescription = optionalDescription;
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

	public long getTopAnswerId() {
		return topAnswerID;
	}

	public void setTopAnswerId(long topAnswerID) {
		this.topAnswerID = topAnswerID;
	}

	public int getNoOfAnswers() {
		return noOfAnswers;
	}

	public void setNoOfAnswers(int noOfAnswers) {
		this.noOfAnswers = noOfAnswers;
	}

	public long getCategoryId() {
		return categoryID;
	}

	public void setCategoryId(long categoryID) {
		this.categoryID = categoryID;
	}
}
