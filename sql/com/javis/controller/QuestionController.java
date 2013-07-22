package com.javis.controller;

import com.javis.entity.*;

public class QuestionController {
	// QuestionManager, UserManager
	public static void addQuestion(String description, String optionalDescription, String email, long categoryID) {
		long newQuestionID = QuestionManager.addQuestion(description, optionalDescription, email, categoryID);
		UserManager.addNoOfQuestions(email, newQuestionID, 1);  // user +1 for no. of questions
	}
	
	public static void deleteQuestion(long questionID) {
		Question question = QuestionManager.getQuestion(questionID);
		String email = question.getEmail();
		QuestionManager.deleteQuestion(questionID);
		UserManager.deleteQuestion(email, questionID); // user -1 for no. of questions
	}
	
	public static Question getQuestion(long questionID) {
		return QuestionManager.getQuestion(questionID);
	}
}
