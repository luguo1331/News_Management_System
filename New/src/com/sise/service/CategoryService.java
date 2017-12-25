package com.sise.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.sise.po.Category;
import com.sise.utils.PageBean;

public interface CategoryService {
	// 增加Category
	public void addCategory(Category category);

	// 更新Category
	public void updateCategory(Category category);

	// 删除Category
	public void deleteCategory(Category category);

	// 找到所有的Category
	public List<Category> findAllCategory();

	// 根据cId查找Category
	public Category getCategoryById(String cid);
	
	public PageBean<Category> findCategoryByCriteria(Integer first,Integer end,DetachedCriteria criteria );
}
