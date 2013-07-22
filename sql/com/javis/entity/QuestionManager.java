package com.javis.entity;

import java.util.HashMap;
import java.util.Date;
import java.util.Set;

public class QuestionManager {
	private static HashMap<Long, Question> questions = new HashMap<Long, Question>();
	
	public static Question getQuestion(long questionId) {
		return questions.get(questionId);
	}
	
	public static long getLastId() {
		Set<Long> questionIDSet = questions.keySet();
		int size = questionIDSet.size();
		
		Object[] questionIDArray = questionIDSet.toArray();
		long lastID = (long)questionIDArray[size-1];
		return lastID;
	}
	
	public static long addQuestion(String description, String optionalDescription, String email, long categoryID) {
		Date date = new Date();
		Question question = new Question(description, optionalDescription, date, email, categoryID);
		long lastIndex = getLastId();
		long newID = lastIndex + 1;// generate question id
		question.setId(newID);
		questions.put(newID, question);// put question into the HashMap
		// ask questions i think don't need to add points
		// adding to user's question count will be done in the QuestionController
		return newID;
	}
	
	public static void deleteQuestion(long questionID) {
		questions.remove(questionID);
	}
	
	// don't have to edit question, repost instead
	public static String getDescription(long id) {
		Question question = questions.get(id);
		return question.getDescription();
	}
	
	public static String optionalDescription(long id) {
		Question question = questions.get(id);
		return question.getOptionalDescription();
	}
	
	public static Date getDateTime(long id) {
		Question question = questions.get(id);
		return question.getDateTime();
	}
	
	public static long getTopAnswerId(long id) {
		Question question = questions.get(id);
		return question.getTopAnswerId();
	}
	
	public static void setTopAnswerId(long questionID, long answerID) {
		Question question = questions.get(questionID);
		question.setTopAnswerId(answerID);
	}
	
	public static String getEmail(long id) {
		Question question = questions.get(id);
		return question.getEmail();
	}
	
	public static int getNoOfAnswers(long id) {
		Question question = questions.get(id);
		return question.getNoOfAnswers();
	}
	
	public static long getCategoryId(long id) {
		Question question = questions.get(id);
		return question.getCategoryId();
	}
}
