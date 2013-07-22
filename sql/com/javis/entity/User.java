package com.javis.entity;

import java.util.ArrayList;
import java.util.HashMap;

public class User {
	private int rankPoints;
	private int rewardPoints;
	private String name;
	private String email;
	private int rank;
	private long rewardID;
	private int noOfQuestions;
	private int noOfAnswers;
	private HashMap<Long, Long> questions;
	private HashMap<Long, Long> answers;
	private String password;
	private String picture;
	
	public User(int rankPoints, int rewardPoints, String name, String email, long rewardID) {
		this.rankPoints = rankPoints;
		this.name = name;
		this.email = email;
		// how to calculate the rank?
		this.rewardID = rewardID;
		questions = new HashMap<Long, Long>();
		answers = new HashMap<Long, Long>();
		noOfQuestions = questions.size();
		noOfAnswers = answers.size();
		// to add default picture
	}
	
	public User(String name, String email, long rewardID) {
		this(0, 0, name, email, rewardID);
	}
	
	public int getRankPoints() {
		return rankPoints;
	}
	
	public void setRankPoints(int rankPoints) {
		this.rankPoints = rankPoints;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getRank() {
		return rank;
	}
	
	public void setRank(int rank) {
		this.rank = rank;
	}
	
	public long getRewardId() {
		return rewardID;
	}
	
	public void setRewardId(long rewardID) {
		this.rewardID = rewardID;
	}
	
	public int getNoOfQuestions() {
		return noOfQuestions;
	}
	
	public void setNoOfQuestions(int noOfQuestions) {
		this.noOfQuestions = noOfQuestions;
	}
	
	public int getNoOfAnswers() {
		return noOfAnswers;
	}
	
	public void setNoOfAnswers(int noOfAnswers) {
		this.noOfAnswers = noOfAnswers;
	}

	public int getRewardPoints() {
		return rewardPoints;
	}

	public void setRewardPoints(int rewardPoints) {
		this.rewardPoints = rewardPoints;
	}

	public HashMap<Long, Long> getQuestions() {
		return questions;
	}

	public void setQuestions(HashMap<Long, Long> questions) {
		this.questions = questions;
	}

	public HashMap<Long, Long> getAnswers() {
		return answers;
	}

	public void setAnswers(HashMap<Long, Long> answers) {
		this.answers = answers;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}
}
