package com.javis.entity;

import java.util.HashMap;
import java.util.Set;

public class NotificationManager {
	public static HashMap<Long, Notification> notifications;
	
	public static Notification getNotification(long id) {
		return notifications.get(id);
	}
	
	public static long getLastId() {
		Set<Long> notificationIDSet = notifications.keySet();
		int size = notificationIDSet.size();
		
		Object[] notificationIDArray = notificationIDSet.toArray();
		long lastID = (long)notificationIDArray[size-1];
		return lastID;
	}
	
	public static long addNotification(long answerID, String notificationDescription) {
		Notification notification = new Notification(answerID, notificationDescription);
		long lastIndex = getLastId();
		long newID = lastIndex + 1;
		notification.setId(newID);
		notifications.put(newID, notification);
		return newID;
	}
	
	public static String getNotificationDescription(long id) {
		Notification notification = getNotification(id);
		return notification.getNotificationDescription();
	}
	
	public static void setSeen(long id) {
		Notification notification = getNotification(id);
		notification.setSeen(true);
	}
}
