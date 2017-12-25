package com.sise.action;

import java.text.ParseException;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.po.Category;
import com.sise.po.News;
import com.sise.service.CategoryService;
import com.sise.service.NewsService;
import com.sise.utils.DateUtil;

@Controller
@Scope("prototype")
public class NewsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private List<Category> categories;
	private List<News> newes;
	private News news;
	private String news_id;
	private String category_id;

	public String getNews_id() {
		return news_id;
	}

	public void setNews_id(String news_id) {
		this.news_id = news_id;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public List<News> getNewes() {
		return newes;
	}

	public void setNewes(List<News> newes) {
		this.newes = newes;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	@Autowired
	private NewsService newsService;

	@Autowired
	private CategoryService categoryService;

	public String listNews() {
		newes = newsService.findAllNews();
		return "listNews";
	}

	public String addNews() {
		categories = categoryService.findAllCategory();
		return "newsAdd";
	}

	public String addedNews() throws ParseException {
		news.setNews_upload_time(DateUtil.getCurrentDate());
		newsService.addNews(news);
		return "displayNews";
	}

	public String deleteNews() {
		newsService.deleteNews(newsService.getNewsById(news_id));
		return "displayNews";
	}

	public String editNews() {
		news = newsService.getNewsById(news_id);
		categories = categoryService.findAllCategory();
		return "editNews";
	}

	public String editedNews() {
		newsService.updateNews(news);
		return "displayNews";
	}

	public String showNews() {
		news = newsService.getNewsById(news_id);
		return "showNews";
	}

	public String likeTitleAndCategory() {
		DetachedCriteria criteria = DetachedCriteria.forClass(News.class);
		if (news.getNews_title() != null && !news.getNews_title().trim().isEmpty()) {
			System.out.println(news.getNews_title());
			criteria.add(Restrictions.like("news_title", "%"+news.getNews_title()+"%"));
		}
		if (news.getCategory().getCategory_id() != null && !news.getCategory().getCategory_id().trim().isEmpty()) {
			System.out.println(news.getCategory().getCategory_id());
			criteria.add(Restrictions.eq("category.category_id", news.getCategory().getCategory_id()));
		}
		newes = newsService.fingNewsByCriteria(criteria);
		return "listNews";
	}

}
