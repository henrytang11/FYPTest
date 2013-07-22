package com.javis.entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Set;

public class AnswerManager {
	private static HashMap<Long, Answer> answers = new HashMap<Long, Answer>();
	
	public static Answer getAnswer(long id) {
		return answers.get(id);
	}
	
	public static long getLastId() {
		Set<Long> answerIDSet = answers.keySet();
		int size = answerIDSet.size();
		
		Object[] answerIDArray = answerIDSet.toArray();
		long lastID = (long)answerIDArray[size-1];
		return lastID;
	}
	
	public static long addAnswer(String description, String email, long questionID) {
		Date date = new Date();
		Answer answer = new Answer(date, description, email, questionID);
		long lastIndex = getLastId();
		long newID = lastIndex + 1;
		answer.setId(newID);
		answers.put(newID, answer);
		return newID;
	}
	
	public static void deleteAnswer(long id) {
		answers.remove(id);
	}
	
	//cannot edit answer
	public static Date getDateTime(long id) {
		Answer answer = answers.get(id);
		return answer.getDateTime();
	}
	
	public static String getEmail(long id) {
		Answer answer = answers.get(id);
		return answer.getEmail();
	}
	
	public static long getQuestionId(long id) {
		Answer answer = answers.get(id);
		return answer.getQuestionId();
	}
	
	public static String getDescription(long id) {
		Answer answer = answers.get(id);
		return answer.getDescription();
	}
	
	public static int getNoOfReplies(long id) {
		Answer answer = answers.get(id);
		return answer.getNoOfReplies();
	}
	
	public static void addNoOfReplies(long id, int noOfReplies) {
		Answer answer = answers.get(id);
		answer.setNoOfReplies(answer.getNoOfReplies() + noOfReplies);
	}
	
	public static void addLikes(long answerID, long userID) {
		Answer answer = answers.get(answerID);
		HashMap<Long, Long> likeList = answer.getLikeList();
		likeList.put(userID, userID);
		answer.setLikes(likeList.size());
	}
	
	public static void addDislikes(long answerID, long userID) {
		Answer answer = answers.get(answerID);
		HashMap<Long, Long> dislikeList = answer.getDislikeList();
		dislikeList.put(userID, userID);
		answer.setDislikes(dislikeList.size());
	}
	
	public static HashMap<Long, Long> getLikeList(long answerID) {
		Answer answer = answers.get(answerID);
		return answer.getLikeList();
	}
	
	public static HashMap<Long, Long> getDislikeList(long answerID) {
		Answer answer = answers.get(answerID);
		return answer.getDislikeList();
	}
}
