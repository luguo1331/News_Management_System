package com.sise.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.sise.po.News;

public interface NewsDao extends BaseDao<News> {
	public List<News> fingNewsByCriteria(DetachedCriteria criteria);
	
	public List<News> fingNewsByCriteria(DetachedCriteria criteria,Integer first, Integer end);
}
