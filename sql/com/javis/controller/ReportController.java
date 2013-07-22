package com.javis.controller;

import com.javis.entity.*;

public class ReportController {
	public static void addReport(long questionID, long answerID) {
		String email = null;
		if (questionID == 0) {
			email = QuestionManager.getQuestion(questionID).getEmail();
		} else {
			email = AnswerManager.getAnswer(answerID).getEmail();
		}
		ReportManager.addReport(email, questionID, answerID);
	}
	
	public static Report getReport(long reportID) {
		return ReportManager.getReport(reportID);
	}
}
