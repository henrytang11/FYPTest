package com.javis.entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Set;

public class RewardManager {
	private static HashMap<Long, Reward> rewards = new HashMap<Long, Reward>();
	
	public static Reward getReward(long id) {
		return rewards.get(id);
	}
	
	public static long getLastId() {
		Set<Long> rewardIDSet = rewards.keySet();
		int size = rewardIDSet.size();
		
		Object[] rewardIDArray = rewardIDSet.toArray();
		long lastID = (long)rewardIDArray[size-1];
		return lastID;
	}
	
	public static void addReward(int pointsRequired, int rankRequired, int likes, Date expiry, String rewardDescription, String picture) {
		Reward reward = new Reward(pointsRequired, rankRequired, likes, expiry, rewardDescription, picture);
		long lastIndex = getLastId();
		long newID = lastIndex + 1;
		reward.setId(newID);
		rewards.put(newID, reward);
	}
	
	public static void addReward(int pointsRequired, int rankRequired, Date expiry, String rewardDescription, String picture) {
		addReward(pointsRequired, rankRequired, 0, expiry, rewardDescription, picture);
	}
	
	public static void deleteReward(long id) {
		rewards.remove(id);
	}
	
	// no editing of reward
	public static int getPointsRequired(long id) {
		Reward reward = rewards.get(id);
		return reward.getPointsRequired();
	}
	
	public static int getRankRequired(long id) {
		Reward reward = rewards.get(id);
		return reward.getRankRequired();
	}
	
	public static Date getExpiry(long id) {
		Reward reward = rewards.get(id);
		return reward.getExpiry();
	}
	
	public static int getLikes(long id) {
		Reward reward = rewards.get(id);
		return reward.getLikes();
	}
	
	public static String rewardDescription(long id) {
		Reward reward = rewards.get(id);
		return reward.getRewardDescription();
	}
	
	public static String picture(long id) {
		Reward reward = rewards.get(id);
		return reward.getPicture();
	}
	
	public static void setPicture(long id, String picture) {
		Reward reward = rewards.get(id);
		reward.setPicture(picture);
	}
}
