package com.sise.test;

import java.util.List;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sise.po.Category;
import com.sise.po.News;
import com.sise.po.User;
import com.sise.service.CategoryService;
import com.sise.service.NewsService;
import com.sise.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class Test {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private UserService userService;

	@Autowired
	private NewsService newsService;

	@org.junit.Test
	public void test1() {
		Category category = categoryService.getCategoryById("1");
		System.out.println(category.getCategory_name());
	}

	@org.junit.Test
	public void test2() {
		User user = new User();
		user.setUser_account("root");
		user.setUser_password("123");
		User login = userService.isLogin(user);
		System.out.println(login.getUser_name());
	}

	@org.junit.Test
	public void test3() {
		List<News> findAllNews = newsService.findAllNews();
		for (News news : findAllNews) {
			System.out.println(news.getCategory().getCategory_name());
			System.out.println(news.getCategory().getCategory_id());
			System.out.println("2222222222222");
			
		}
	}
}
