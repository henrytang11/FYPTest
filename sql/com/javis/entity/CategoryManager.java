package com.javis.entity;

import java.util.HashMap;
import java.util.Set;

public class CategoryManager {
	private static HashMap<Long, Category> categories = new HashMap<Long, Category>();
	
	public static Category getCategory(long id) {
		return categories.get(id);
	}
	
	public static long getLastId() {
		Set<Long> categoryIDSet = categories.keySet();
		int size = categoryIDSet.size();
		
		Object[] categoryIDArray = categoryIDSet.toArray();
		long lastID = (long)categoryIDArray[size-1];
		return lastID;
	}
	
	public static void addCategory(long parentID, String categoryName) {
		Category category = new Category(parentID, categoryName);
		long lastIndex = getLastId();
		long newID = lastIndex + 1;
		category.setId(newID);
		categories.put(newID, category);
	}
	
	public static void addCategory(String categoryName) {
		addCategory(0, categoryName);  // parentID as 0 means there is no parent category
	}
	
	public static void deleteCategory(long id) {
		categories.remove(id);
	}
	
	public static long getParentId(long id) {
		Category category = categories.get(id);
		return category.getParentId();
	}
	
	public static String getCategoryName(long id) {
		Category category = categories.get(id);
		return category.getCategoryName();
	}
}
