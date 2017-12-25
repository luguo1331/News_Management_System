package com.sise.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.sise.po.Category;
import com.sise.po.News;
import com.sise.service.CategoryService;
import com.sise.service.NewsService;
import com.sise.utils.PageBean;

@Controller
@Scope("prototype")
public class IndexAction {
	@Autowired
	private CategoryService categoryService;

	@Autowired
	private NewsService newsService;

	private List<Category> categories;
	private List<News> newses;
	private News news;
	private PageBean<Category> pagebean;
	private String category_id;
	private String startTime;
	private String endTime;
	

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
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

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public PageBean<Category> getPagebean() {
		return pagebean;
	}

	public void setPagebean(PageBean<Category> pagebean) {
		this.pagebean = pagebean;
	}

	public String index() {
		DetachedCriteria criteria = DetachedCriteria.forClass(Category.class);
		pagebean = categoryService.findCategoryByCriteria(1, 4, criteria);
		DetachedCriteria criteria2 = DetachedCriteria.forClass(News.class);
		List<News> leftNewses = newsService.fingNewsByCriteria(criteria2, 1, 8);
		ActionContext context = ActionContext.getContext();
		context.getSession().put("categories", categories);
		context.getSession().put("pagebean", pagebean);
		context.getSession().put("leftNewses", leftNewses);
		newses = newsService.findAllNews();
		return "index";
	}

	public String likeCategory() {
		DetachedCriteria criteria = DetachedCriteria.forClass(News.class);
		criteria.add(Restrictions.eq("category.category_id", category_id));
		newses = newsService.fingNewsByCriteria(criteria);
		return "index";
	}

	public String likeTitle() throws ParseException {
		DetachedCriteria criteria = DetachedCriteria.forClass(News.class);
		if (getStartTime()!=null&&!getStartTime().isEmpty()&&getEndTime()!=null&&!getEndTime().isEmpty()) {
			System.out.println(getStartTime()+" 0:00:00");
			System.out.println(getEndTime()+" 0:00:00");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");

			criteria.add(Restrictions.between("news_upload_time",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(getStartTime()+" 0:00:00"),new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(getEndTime()+" 0:00:00")));
		}
		if (news.getNews_title() != null && !news.getNews_title().trim().isEmpty()) {
			criteria.add(Restrictions.like("news_title", "%" + news.getNews_title() + "%"));
		}
		newses = newsService.fingNewsByCriteria(criteria);
		return "index";
	}

}
