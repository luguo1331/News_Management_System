package com.sise.action;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sise.po.User;
import com.sise.service.UserService;

@Controller
@Scope("prototype")
public class LoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3507495351179546010L;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Autowired
	private UserService userService;

	// 判断用户登录情况
	public String validateLoginState() {

		ActionContext ctx = ActionContext.getContext();
		Map<String, Object> session = ctx.getSession();

		if (user.getUser_account() == null || user.getUser_account().isEmpty()) {
			ctx.put("msg", "用户名不能为空");
			return INPUT;
		}
		if (user.getUser_password() == null || user.getUser_password().isEmpty()) {
			ctx.put("msg", "密码不能为空");
			return INPUT;
		}
		User result = userService.isLogin(user);
		if (result != null) {
			session.put("user", result);
			return SUCCESS;
		} else {
			ctx.put("msg", "用户名或密码错误");
			return INPUT;
		}
	}

	// 跳转到登录页面
	public String loginUserPage() {
		return INPUT;
	}

	public String LogOut() {
		ActionContext ctx = ActionContext.getContext();
		Map<String, Object> session = ctx.getSession();
		session.remove("user");
		return "login";
	}

	public String userRegister() {
		this.userService.userRegister(user);
		return INPUT;
	}
}