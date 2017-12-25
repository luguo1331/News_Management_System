package com.sise.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.sise.dao.NewsDao;
import com.sise.po.Category;
import com.sise.po.News;

public class NewsDaoImpl extends BaseDaoImpl<News> implements NewsDao {

	@Override
	public List<News> fingNewsByCriteria(DetachedCriteria criteria) {
		return (List<News>) this.getHibernateTemplate().findByCriteria(criteria);
	}

	@Override
	public List<News> fingNewsByCriteria(DetachedCriteria criteria, Integer first, Integer end) {

		return (List<News>) this.getHibernateTemplate().findByCriteria(criteria, first, end);
	}

}
