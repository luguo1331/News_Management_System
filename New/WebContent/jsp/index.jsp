<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" href="css/layui.css" media="all">
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/info.css" />
<script src="js/layui.js" charset="utf-8"></script>

<title></title>
</head>


<body>
	<div class="body ">

		<div class="nav layui-bg-cyan">
			<div class="nav-bg layui-bg-cyan">
				<ul class="layui-nav layui-bg-cyan" lay-filter="">
					<li class="layui-nav-item"><a
						href="${pageContext.request.contextPath }/index_index">&nbsp;首页&nbsp;</a></li>
					<c:forEach items="${sessionScope.pagebean.beanList}" var="category">
						<li class="layui-nav-item "><a
							href="${pageContext.request.contextPath }/index_likeCategory?category_id=${category.category_id }">${category.category_name }</a></li>
					</c:forEach>
				</ul>

				<div class="login-box">
					<c:choose>
						<c:when test="${empty sessionScope.user }">
							<span class="login"><a
								href="<c:url value='/jsp/login.jsp'/>">登录</a></span>
							<span class="register"><a href="">注册</a></span>
						</c:when>
						<c:otherwise>
							<span class="login"><a
								href="">欢迎系统管理员：${sessionScope.user.user_name}</a></span>
							<span class="register"><a href="<c:url value='/admin_index'/>">进入后台</a></span>
						</c:otherwise>
					</c:choose>

				</div>
			</div>
		</div>

		<div class="layui-clear"></div>

		<div class="main">
			<div class="unite-title">
				<h2>最新新闻</h2>
				<form class="layui-form"
					action="${pageContext.request.contextPath }/index_likeTitle"
					method="post">
					<div class="layui-inline">
						<input type="date" class="layui-input" name="startTime">
					</div>
					<div class="layui-inline">
						<!-- 注意：这一层元素并不是必须的 -->
						<input type="date" class="layui-input" name="endTime">
					</div>
					<div class="search">
						<input type="text" name="news.news_title" lay-verify="required"
							placeholder="请输入" autocomplete="off" class="layui-input">
					</div>
					<button type="submit" class="layui-btn layui-btn-normal">搜索</button>
				</form>
			</div>

			<div class="main-left">
				<div class="main-l-body">
					<ul class="body-list">
						<c:forEach items="${newses}" var="news">
							<li><a
								href="<c:url value='/news_showNews?news_id=${news.news_id }'/>">${news.news_title }</a><span
								class="span-time">${news.news_upload_time }</span></li>
						</c:forEach>
					</ul>
				</div>
			</div>

			<div class="main-right">
				<div class="aside-box">
					<div class="aside-title">近期热点</div>
					<div class="aside-body">
						<ul class="ib-content">
							<c:forEach items="${sessionScope.leftNewses}" var="news">
								<li class="ib-items"><span class="dot-icon"></span> <span
									class="ib-news"><a
										href="<c:url value='/news_showNews?news_id=${news.news_id }'/>">${news.news_title }</a></span>
								</li>
							</c:forEach>
						</ul>

					</div>
				</div>






			</div>


		</div>

		<div class="layui-clear"></div>

		<div class="footer">
			<div class="footerbg">
				<div class="footerbg-l">
					<div class="footer-list">
						<a href="">新闻在线</a> <a href="">中心简介</a> <a href="">关于我们</a> <a
							href="">版权声明</a> <a href="">帮助中心</a> <a href="">网站地图</a>
					</div>
					<div class="footer-units">
						<p>主管单位：教育部高校学生司</p>
						<p>主办单位：全国高等学校学生信息咨询与就业指导中心</p>
						<p>承办单位：新闻在线</p>
					</div>
				</div>
				<div class="footerbg-r">
					<p>服务热线：010-82199588</p>
					<p>客服邮箱：zgkaoyanzx@sise.com.cn</p>
					<p>京ICP证030485号</p>
				</div>
			</div>
		</div>


	</div>








	<script>
		layui.use('element', function() {
			var element = layui.element;
		});

		layui.use('carousel', function() {
			var carousel = layui.carousel;
			//建造实例
			carousel.render({
				elem : '#test1',
				width : '100%' //设置容器宽度
				,
				arrow : 'always' //始终显示箭头
				,
				height : '300px'
			//,anim: 'updown' //切换动画方式
			});
		});
	</script>
</body>
</html>
