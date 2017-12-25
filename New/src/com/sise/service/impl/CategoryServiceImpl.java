package com.sise.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sise.dao.CategoryDao;
import com.sise.po.Category;
import com.sise.service.CategoryService;
import com.sise.utils.PageBean;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;

	@Override
	public void addCategory(Category category) {
		categoryDao.save(category);
	}

	@Override
	public void updateCategory(Category category) {
		categoryDao.update(category);
	}

	@Override
	public void deleteCategory(Category category) {
		categoryDao.delete(category);
	}

	@Override
	public List<Category> findAllCategory() {
		return categoryDao.findAll();
	}

	@Override
	public Category getCategoryById(String cid) {
		return categoryDao.findById(cid);
	}

	@Override
	public PageBean<Category> findCategoryByCriteria(Integer first, Integer end, DetachedCriteria criteria) {
		return  (PageBean<Category>) categoryDao.findByPage(first, end, criteria);
	}



}
