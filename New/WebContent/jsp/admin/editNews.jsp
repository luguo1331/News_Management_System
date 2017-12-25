<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>修改新闻</title>
<meta name="description" content="这是一个 添加 页面">
<meta name="keywords" content="index">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="icon" type="image/png"
	href="<c:url value='/assets/i/favicon.png'/>">
<link rel="apple-touch-icon-precomposed"
	href="<c:url value='/assets/i/app-icon72x72@2x.png'/>">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet"
	href="<c:url value='/assets/css/amazeui.min.css'/>" />
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
<script type="text/javascript">
	$(function() {

		$("#btn").click(function() {

			$("#form").submit();
		});
	});
</script>
</head>
<body>
	<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->
</head>

<body>
	<header class="am-topbar admin-header">
		<!--顶部导航条 -->
		<c:import url="/jsp/admin/header.jsp"></c:import>
	</header>

	<div class="am-cf admin-main">
		<!--侧边导航条 -->
		<c:import url="/jsp/admin/aside.jsp"></c:import>

		<div class=" admin-content">

			<div class="daohang"></div>




			<div class="admin-biaogelist">

				<div class="listbiaoti am-cf">
					<ul class="am-icon-flag on">栏目名称
					</ul>

					<dl class="am-icon-home" style="float: right;">
						当前位置： 首页 >
						<a href="#">修改新闻</a>
					</dl>



				</div>

				<div class="fbneirong">
					<form class="am-form"
						action="<c:url value='/news_editedNews'/>"
						method="post" id="form">
						<input name="news.news_id" value="${news.news_id}" type="hidden" />
						<input name="news.news_upload_time"
							value="${news.news_upload_time}" type="hidden" />
						<div class="am-form-group am-cf">
							<div class="zuo">新闻标题：</div>
							<div class="you">
								<input type="text" class="am-input-sm" id="title"
									name="news.news_title" value="${news.news_title }">
							</div>
						</div>

						<div class="am-form-group am-cf">
							<div class="zuo">新闻类别 ：</div>
							<div class="you">
								<select name="news.category.category_id" label="类型">
									<c:forEach items="${categories}" var="category">
										<c:choose>
											<c:when
												test="${category.category_id == news.category.category_id}">
												<option value='${category.category_id}' selected>${category.category_name}</option>
											</c:when>
											<c:otherwise>
												<option value='${category.category_id}'>${category.category_name}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</select>
							</div>
						</div>

						<div class="am-form-group am-cf">
							<div class="zuo">信息来源 ：</div>
							<div class="you">
								<input type="text" class="am-input-sm" id="source"
									name="news.author" value="${news.author }">
							</div>
						</div>


						<div class="am-form-group am-cf">
							<div class="zuo">新闻内容 ：</div>
							<div class="you">
								<textarea class="" rows="2" id="doc-ta-1"
									name="news.news_content">${news.news_content }</textarea>
							</div>
						</div>


						<div class="am-form-group am-cf">
							<div class="you" style="margin-left: 11%;">
								<button type="submit" id="btn"
									class="am-btn am-btn-success am-radius">&nbsp;
									&nbsp;&nbsp; &nbsp;修改 &nbsp; &nbsp;&nbsp; &nbsp;</button>
								&nbsp; &raquo; &nbsp;
							</div>
						</div>
					</form>
				</div>


				<div class="foods">
					<ul>版权所有@2017
					</ul>
					<dl>
						<a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
					</dl>
				</div>




			</div>

		</div>

	</div>

	<script src="assets/js/amazeui.min.js"></script>

</body>
</html>