<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="nav-navicon admin-main admin-sidebar">


	<div class="sideMenu am-icon-dashboard"
		style="color: #aeb2b7; margin: 10px 0 0 0;">欢迎系统管理员：${sessionScope.user.user_name}
		<span class="register"><a href="<c:url value='/login_LogOut'/>">退出</a></span>
	</div>
	<div class="sideMenu">
		<h3 class="am-icon-flag">
			<em></em> <a
				href="${pageContext.request.contextPath }/news_listNews.action?">新闻管理</a>
		</h3>
		<ul>
			<li><a
				href="${pageContext.request.contextPath }/news_listNews.action?">新闻列表</a>
			</li>
			<li class="func" dataType='html' dataLink='msn.htm'
				iconImg='images/msn.gif'></li>
			<li><a
				href="${pageContext.request.contextPath }/news_addNews.action">新增新闻</a>
			</li>
		</ul>

		<h3 class="am-icon-flag">
			<em></em> <a
				href="${pageContext.request.contextPath }/admin_index.action?">类型管理</a>
		</h3>
		<ul>
			<li><a
				href="${pageContext.request.contextPath }/admin_index.action?">类型列表</a>
			</li>
			<li class="func" dataType='html' dataLink='msn.htm'
				iconImg='images/msn.gif'></li>
			<li><a
				href="${pageContext.request.contextPath }/admin_addCategory.action">新增类型</a>
			</li>
		</ul>
	</div>
	<!-- sideMenu End -->

	<script type="text/javascript">
		jQuery(".sideMenu").slide({
			titCell : "h3", //鼠标触发对象
			targetCell : "ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
			effect : "slideDown", //targetCell下拉效果
			delayTime : 300, //效果时间
			triggerTime : 150, //鼠标延迟触发时间（默认150）
			defaultPlay : true,//默认是否执行效果（默认true）
			returnDefault : true
		//鼠标从.sideMen移走后返回默认状态（默认false）
		});
	</script>

</div>