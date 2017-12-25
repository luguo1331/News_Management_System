package com.sise.action;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sise.po.Category;
import com.sise.po.News;
import com.sise.service.CategoryService;
import com.sise.service.NewsService;

@Controller
@Scope("prototype")
public class CategoryAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Category> categories;
	private List<News> newses;
	private Category category;
	private News news;
	private List<News> newes;
	private String category_id;
	private String category_name;

	
	public List<News> getNewes() {
		return newes;
	}

	public void setNewes(List<News> newes) {
		this.newes = newes;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public List<News> getNewses() {
		return newses;
	}

	public void setNewses(List<News> newses) {
		this.newses = newses;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private NewsService newsService;

	public String index() {
		categories = categoryService.findAllCategory();
		ActionContext context = ActionContext.getContext();
		context.getSession().put("categories", categories);
		return "index";
	}

	public String deleteCategory() {
		try {
			category = categoryService.getCategoryById(category_id);
			categoryService.deleteCategory(category);
		} catch (Exception e) {
			DetachedCriteria criteria = DetachedCriteria.forClass(News.class);
			criteria.add(Restrictions.eq("category.category_id", category.getCategory_id()));
			newes = newsService.fingNewsByCriteria(criteria);
			return "listNews";
		}
		return "displayCategory";
	}

	public String updateCategory() {
		category = categoryService.getCategoryById(category_id);
		return "updateCategory";
	}

	public String editCategory() {
		categoryService.updateCategory(category);
		return "displayCategory";
	}

	public String addCategory() {
		return "addCategory";
	}

	public String addedCategory() {
		categoryService.addCategory(category);
		return "displayCategory";
	}

}
