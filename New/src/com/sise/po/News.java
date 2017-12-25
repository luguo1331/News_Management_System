package com.sise.po;

import java.util.Date;

public class News {
	private String news_id;
	private String news_title;
	private String news_content;
	private Date news_upload_time;
	private String author;
	private Category category;
	public String getNews_id() {
		return news_id;
	}
	public void setNews_id(String news_id) {
		this.news_id = news_id;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public Date getNews_upload_time() {
		return news_upload_time;
	}
	public void setNews_upload_time(Date news_upload_time) {
		this.news_upload_time = news_upload_time;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	
}
