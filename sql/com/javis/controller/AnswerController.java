package com.javis.controller;

import java.util.HashMap;

import com.javis.entity.*;

public class AnswerController {
	// UserManager, AnswerManager, RewardManager
	public static void addAnswer(String description, String email, long questionID) {
		long answerID = AnswerManager.addAnswer(description, email, questionID);
		UserManager.addNoOfAnswers(email, answerID, 1);
		UserManager.addRankPoints(email, 1);
		UserManager.addRewardPoints(email, 1); //add reward points
	}
	
	public static void deleteAnswer(long answerID) {
		Answer answer = AnswerManager.getAnswer(answerID);
		String email = answer.getEmail();
		AnswerManager.deleteAnswer(answerID);
		UserManager.addRewardPoints(email, -1);
	}
	
	public static HashMap<Long, Long> getLikeList(long answerID) {
		return AnswerManager.getLikeList(answerID);
	}
	
	public static void addLikes(long answerID, long userID) {
		AnswerManager.addLikes(answerID, userID);
	}
	
	public static void addDislikes(long answerID, long userID) {
		AnswerManager.addDislikes(answerID, userID);
	}
}
