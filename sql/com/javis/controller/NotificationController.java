package com.javis.controller;

import com.javis.entity.NotificationManager;

public class NotificationController {
	public static void addNotification(long answerID, String notificationDescription) {
		NotificationManager.addNotification(answerID, notificationDescription);
	}
	
	public static void setSeen(long id) {
		NotificationManager.setSeen(id);
	}
}
