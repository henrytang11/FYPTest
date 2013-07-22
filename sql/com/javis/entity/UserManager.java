package com.javis.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public class UserManager {
	private static  HashMap<String, User> users = new HashMap<String, User>();
	
	public static User getUser(String email) {
		return users.get(email);
	}
	
	// public static long getLastId() {
		// Set<String> emailSet = users.keySet();
		// int size = emailSet.size();
		
		// Object[] emailArray = emailSet.toArray();
		// long lastID = (long)emailArray[size-1];
		// return lastID;
	// }
	
	public static void addUser(String name, String email, long rewardID) {
		User user = new User(name, email, rewardID);
		//ArrayList<Long> userIDs = getAllUserId();
		// long lastIndex = getLastId();
		// long newID = lastIndex + 1;

		users.put(email, user);  // PUT the new user into the HashMap
	}
	
	public static void addUser(String name, String email) {
		addUser(name, email, (long)0);
	}
	
	public static void deleteUser(String email) {
		users.remove(email);
	}
	
	public static void editUser(String name, String email) {
		User user = users.get(email);
		int rankPoints = user.getRankPoints();
		long rewardID = user.getRewardId();
		int rewardPoints = user.getRewardPoints();
		User newUser = new User(rankPoints, rewardPoints, name, email, rewardID);
		
		users.put(email, newUser);
	}
	
	public static int getRankPoints(String email) {
		User user = getUser(email);
		return user.getRankPoints();
	}
	
	public static String getEmail(String email) {
		User user = getUser(email);
		return user.getEmail();
	}
	
	public static int getRank(String email) {
		User user = getUser(email);
		return user.getRank();
	}
	
	public static long getRewardId(String email) {
		User user = getUser(email);
		return user.getRewardId();
	}
	
	public static int getNoOfQuestions(String email) {
		User user = getUser(email);
		return user.getNoOfQuestions();
	}
	
	public static int getNoOfAnswers(String email) {
		User user = getUser(email);
		return user.getNoOfAnswers();
	}
	
	public static void addRankPoints(String email, int points) {
		User user = getUser(email);
		user.setRankPoints(user.getRankPoints() + points);
	}
	
	public static void addNoOfQuestions(String email, long questionID, int noOfQuestions) {
		User user = getUser(email);
		HashMap<Long, Long> questions = user.getQuestions();
		questions.put(questionID, questionID);
		user.setNoOfQuestions(questions.size());
	}
	
	public static void deleteQuestion(String email, long questionID) {
		User user = getUser(email);
		HashMap<Long, Long> questions = user.getQuestions();
		questions.remove(questionID);
		user.setNoOfQuestions(questions.size());
	}
	
	public static void addNoOfAnswers(String email, long answerID, int noOfAnswers) {
		User user = getUser(email);
		HashMap<Long, Long> answers = user.getAnswers();
		answers.put(answerID, answerID);
		user.setNoOfQuestions(answers.size());
	}
	
	public static void deleteAnswer(String email, long answerID) {
		User user = getUser(email);
		HashMap<Long, Long> answers = user.getAnswers();
		answers.remove(answerID);
		user.setNoOfAnswers(answers.size());
	}
	
	public static void addRewardPoints(String email, int rewardPoints) {
		User user = getUser(email);
		int originalRewardPoints = user.getRewardPoints();
		user.setRewardPoints(originalRewardPoints + rewardPoints);
	}
	
	public static void addRewardId(String email, long rewardID) {
		User user = getUser(email);
		if (user.getRewardId() == 0) {  // only if user does not have any reward
			user.setRewardId(rewardID);
		}
	}
	
	public static boolean comparePassword(String email, String password) {
		User user = getUser(email);
		String password1 = user.getPassword();
		return password1.equals(password);
	}
	
	public static void editRewardId(String email, long rewardID) {
		User user = getUser(email);
		user.setRewardId(rewardID);
	}
	
	public static void setPicture(String email, String picture) {
		User user = getUser(email);
		user.setPicture(picture);
	}
	
}
