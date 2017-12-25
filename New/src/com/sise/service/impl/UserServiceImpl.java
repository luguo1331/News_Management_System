package com.sise.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sise.dao.UserDao;
import com.sise.po.User;
import com.sise.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public User isLogin(User user) {
		return userDao.isLogin(user);
	}

	@Override
	public void userRegister(User user) {
		userDao.save(user);
	}

}
