package com.javis.entity;

import java.util.Date;
import java.util.HashMap;

public class Answer {
	private long id;
	private Date dateTime;
	private String description;
	private String email;
	private long questionID;
	private int noOfReplies;
	private int likes;
	private int dislikes;
	private HashMap<Long, Long> likeList;
	private HashMap<Long, Long> dislikeList;
	
	public Answer(Date dateTime, String description, String email, long questionID) {
		this.dateTime = dateTime;
		this.description = description;
		this.email = email;
		this.questionID = questionID;
		noOfReplies = 0;
		likes = 0;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getNoOfReplies() {
		return noOfReplies;
	}

	public void setNoOfReplies(int noOfReplies) {
		this.noOfReplies = noOfReplies;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}
	
	public int getDislikes() {
		return dislikes;
	}

	public void setDislikes(int dislikes) {
		this.dislikes = dislikes;
	}

	public HashMap<Long, Long> getLikeList() {
		return likeList;
	}

	public void setLikeList(HashMap<Long, Long> likeList) {
		this.likeList = likeList;
	}
	
	public HashMap<Long, Long> getDislikeList() {
		return dislikeList;
	}

	public void setdislikeList(HashMap<Long, Long> dislikeList) {
		this.dislikeList = dislikeList;
	}
}
