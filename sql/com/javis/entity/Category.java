package com.javis.entity;

public class Category {
	private long id;
	private long parentID;
	private String categoryName;
	
	public Category(long parentID, String categoryName) {
		this.parentID = parentID;
		this.categoryName = categoryName;
	}
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public long getParentId() {
		return parentID;
	}
	
	public void setParentId(long parentID) {
		this.parentID = parentID;
	}
	
	public String getCategoryName() {
		return categoryName;
	}
	
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
}
