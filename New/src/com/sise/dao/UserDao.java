package com.sise.dao;

import com.sise.po.User;

public interface UserDao extends BaseDao<User> {
	public User isLogin(User user);
}
