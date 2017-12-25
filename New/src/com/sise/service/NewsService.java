package com.sise.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.sise.po.News;

public interface NewsService {
	// 增加News
	public void addNews(News news);

	// 更新News
	public void updateNews(News news);

	// 删除News
	public void deleteNews(News news);

	// 找到所有的News
	public List<News> findAllNews();

	// 根据cId查找News
	public News getNewsById(String nid);

	public List<News> fingNewsByCriteria(DetachedCriteria criteria);
	
	public List<News> fingNewsByCriteria(DetachedCriteria criteria,Integer first, Integer end);

}
