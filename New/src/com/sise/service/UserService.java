package com.sise.service;

import com.sise.po.User;

public interface UserService {
	// 判断用户登录情况
	public User isLogin(User user);

	// 注册用户
	public void userRegister(User user);
}
