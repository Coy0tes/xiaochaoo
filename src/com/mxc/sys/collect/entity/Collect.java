package com.mxc.sys.collect.entity;

public class Collect {

	 private String id; 
	 private String newsId;
	 private String userId;
	 
	public Collect() {
		System.out.println("This is entity:Collect");
	}
	public Collect(String id, String newsId, String userId) {
		super();
		this.id = id;
		this.newsId = newsId;
		this.userId = userId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNewsId() {
		return newsId;
	}
	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	 
	 
}
