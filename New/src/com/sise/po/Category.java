package com.sise.po;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Category implements Serializable {
	private static final long serialVersionUID = 1L;
	private String category_id;
	private String category_name;
	private Set<News> newsSet = new HashSet<News>();

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public Set<News> getNewsSet() {
		return newsSet;
	}

	public void setNewsSet(Set<News> newsSet) {
		this.newsSet = newsSet;
	}

}
