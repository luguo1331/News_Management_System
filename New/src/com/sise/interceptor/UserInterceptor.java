package com.sise.interceptor;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.sise.po.User;

public class UserInterceptor extends MethodFilterInterceptor {


	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		// 获取session
				User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
				if(user == null){
					return "login";
				}
				// 执行下一个拦截器
				return invocation.invoke();
	}

}
