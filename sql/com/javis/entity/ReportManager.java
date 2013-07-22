package com.javis.entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Set;

public class ReportManager {
	public static HashMap<Long, Report> reports = new HashMap<Long, Report>();
	
	public static Report getReport(long id)  {
		return reports.get(id);
	}
	
	public static long getLastId() {
		Set<Long> reportIDSet = reports.keySet();
		int size = reportIDSet.size();
		
		Object[] reportIDArray = reportIDSet.toArray();
		long lastID = (long)reportIDArray[size-1];
		return lastID;
	}
	
	public static void addReport(String email, long questionID, long answerID) {
		// if questionID or answerID is 0, then it is null
		Date date = new Date();
		Report report = new Report(date, email, questionID, answerID);
		long lastIndex = getLastId();
		long newID = lastIndex + 1;
		report.setId(newID);
		reports.put(newID, report);
	}
	
	//cannot delete or edit report
	public static String getEmail(long id) {
		Report report = reports.get(id);
		return report.getEmail();
	}
	
	public static long getQuestionId(long id) {
		Report report = reports.get(id);
		return report.getQuestionId();
	}
	
	public static long getAnswerId(long id) {
		Report report = reports.get(id);
		return report.getAnswerId();
	}
}
