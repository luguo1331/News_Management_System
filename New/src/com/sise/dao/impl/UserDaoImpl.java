package com.sise.dao.impl;

import java.util.List;

import com.sise.dao.UserDao;
import com.sise.po.User;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	@Override
	public User isLogin(User user) {
		List<User> find = (List<User>) this.getHibernateTemplate().find(
				"from User where user_account = ? and user_password = ?", user.getUser_account(),
				user.getUser_password());
		if (find != null && find.size() > 0) {
			return find.get(0);
		}
		return null;
	}

}
