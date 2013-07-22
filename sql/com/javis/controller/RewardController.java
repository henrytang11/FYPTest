package com.javis.controller;

import java.util.Date;

import com.javis.entity.*;

public class RewardController {
	public static void addReward(int pointsRequired, int rankRequired, int likes, Date expiry, String rewardDescription, String picture) {
		RewardManager.addReward(pointsRequired, rankRequired, likes, expiry, rewardDescription, picture);
	}
	
	public static void addReward(int pointsRequired, int rankRequired, Date expiry, String rewardDescription, String picture) {
		RewardManager.addReward(pointsRequired, rankRequired, expiry, rewardDescription, picture);
	}
	
	public static void deleteReward(long id) {
		RewardManager.deleteReward(id);
	}
	
	public static void setPicture(long id, String picture) {
		RewardManager.setPicture(id, picture);
	}
}
