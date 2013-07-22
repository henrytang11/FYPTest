package com.javis.controller;

import com.javis.entity.*;

public class UserController {
	// UserManager, RewardManager
	public static void addUser(String name, String email, long rewardID) {
		UserManager.addUser(name, email, rewardID);
	}
	
	public static void addUser(String name, String email) {
		UserManager.addUser(name, email);
	}
	
	public static void editUser(String name, String email) {
		UserManager.editUser(name, email);
	}
	
	public static void deleteUser(String email) {
		UserManager.deleteUser(email);
	}
	
	public static User getUser(String email) {
		return UserManager.getUser(email);
	}
	
	public static void claimReward(String email) {
		User user = UserManager.getUser(email);
		long rewardID = user.getRewardId();
		Reward reward = RewardManager.getReward(rewardID);
		int pointsRequired = reward.getPointsRequired();
		int rewardPoints = user.getRewardPoints();
		if (rewardPoints >= pointsRequired) {
			user.setRewardId(0);
			user.setRewardPoints(rewardPoints - pointsRequired);
			// *****reward sent to user*****
		}
	}
	
	public static void setRewardId(String email, long rewardID) {
		UserManager.editRewardId(email, rewardID);
	}
	
	public static void setPicture(String email, String picture) {
		UserManager.setPicture(email, picture);
	}
}
