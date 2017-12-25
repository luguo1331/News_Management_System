<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="page-header">
		<h1 align="center">
			<s:property value="%{news.news_title}" />
		</h1>
		<h1 align="center">
			<small> 来源:<s:property value="%{news.author}" />&nbsp;&nbsp;发布时间:
				<s:date name="news.news_upload_time" format="yyyy-MM-dd HH:mm:ss"
					nice="false" /></small>
		</h1>
	</div>
	<p class="lead">
		&nbsp;&nbsp;&nbsp;&nbsp;
		<s:property value="%{news.news_content}" />
	</p>
</body>
</html>