package com.javis.entity;

import java.util.Date;

public class Reward {
	private long id;
	private int pointsRequired;
	private int rankRequired;
	private int likes;
	private Date expiry;
	private String rewardDescription;
	private String picture;
	
	public Reward(int pointsRequired, int rankRequired, int likes, Date expiry, String rewardDescription, String picture) {
		this.pointsRequired = pointsRequired;
		this.rankRequired = rankRequired;
		this.likes = likes;
		this.expiry = expiry;
		this.rewardDescription = rewardDescription;
		this.picture = picture;
	}
	
	public Reward(int pointsRequired, int rankRequired, Date expiry, String rewardDescription, String picture) {
		this(pointsRequired, rankRequired, 0, expiry, rewardDescription, picture);
	}
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public int getPointsRequired() {
		return pointsRequired;
	}
	
	public void setPointsRequired(int pointsRequired) {
		this.pointsRequired = pointsRequired;
	}
	
	public int getRankRequired() {
		return rankRequired;
	}
	
	public void setRankRequired(int rankRequired) {
		this.rankRequired = rankRequired;
	}
	
	public int getLikes() {
		return likes;
	}
	
	public void setLikes(int likes) {
		this.likes = likes;
	}
	
	public Date getExpiry() {
		return expiry;
	}
	
	public void setExpiry(Date expiry) {
		this.expiry = expiry;
	}

	public String getRewardDescription() {
		return rewardDescription;
	}

	public void setRewardDescription(String rewardDescription) {
		this.rewardDescription = rewardDescription;
	}
	
	public String getPicture() {
		return picture;
	}
	
	public void setPicture(String picture) {
		this.picture = picture;
	}
}
