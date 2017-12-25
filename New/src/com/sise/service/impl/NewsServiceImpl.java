package com.sise.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sise.dao.NewsDao;
import com.sise.po.News;
import com.sise.service.NewsService;

@Service
@Transactional
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsDao newsDao;

	@Override
	public void addNews(News news) {
		newsDao.save(news);
	}

	@Override
	public void updateNews(News news) {
		newsDao.update(news);
	}

	@Override
	public void deleteNews(News news) {
		newsDao.delete(news);
	}

	@Override
	public List<News> findAllNews() {
		return newsDao.findAll();
	}

	@Override
	public News getNewsById(String nid) {
		return newsDao.findById(nid);
	}


	@Override
	public List<News> fingNewsByCriteria(DetachedCriteria criteria) {
		return newsDao.fingNewsByCriteria(criteria);
	}

	@Override
	public List<News> fingNewsByCriteria(DetachedCriteria criteria, Integer first, Integer end) {
		return newsDao.fingNewsByCriteria(criteria, first, end);
	}

}
