package com.sise.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.sise.dao.BaseDao;
import com.sise.utils.PageBean;


public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T>{
	
	// 定义成员的属性
	private Class clazz;
	
	public BaseDaoImpl(){
		Class c = this.getClass();
		Type type = c.getGenericSuperclass();
		if(type instanceof ParameterizedType){
			ParameterizedType ptype = (ParameterizedType) type;
			Type[] types = ptype.getActualTypeArguments();
			this.clazz = (Class) types[0];
		}
	}
	/**
	 * 添加
	 */
	public void save(T t) {
		this.getHibernateTemplate().save(t);
	}
	
	/**
	 * 删除
	 */
	public void delete(T t) {
		this.getHibernateTemplate().delete(t);
	}

	/**
	 * 修改
	 */
	public void update(T t) {
		this.getHibernateTemplate().update(t);
	}
	
	/**
	 * 通过主键查询
	 */
	public T findById(String id) {
		return (T) this.getHibernateTemplate().get(clazz, id);
	}
	/**
	 * 查询所有的数据
	 */
	public List<T> findAll() {
		return (List<T>) this.getHibernateTemplate().find("from "+clazz.getSimpleName());
	}
	
	/**
	 * 分页查询
	 */
	public PageBean<T> findByPage(Integer pageCode, Integer pageSize, DetachedCriteria criteria) {
		PageBean<T> page = new PageBean<T>();
		page.setPageCode(pageCode);
		page.setPageSize(pageSize);
		criteria.setProjection(Projections.rowCount());
		List<Number> list = (List<Number>) this.getHibernateTemplate().findByCriteria(criteria);
		if(list != null && list.size() > 0){
			int totalCount = list.get(0).intValue();
			page.setTotalCount(totalCount);
		}
		criteria.setProjection(null);
		
		List<T> beanList = (List<T>) this.getHibernateTemplate().findByCriteria(criteria, (pageCode-1)*pageSize, pageSize);
		page.setBeanList(beanList);
		return page;
	}

	

}