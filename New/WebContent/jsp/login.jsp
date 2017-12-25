<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Kode is a Premium Bootstrap Admin Template, It's responsive, clean coded and mobile friendly">
<meta name="keywords"
	content="bootstrap, admin, dashboard, flat admin template, responsive," />
<title>后台登陆</title>

<!-- ========== Css Files ========== -->
<link href="<c:url value='/admin_css/css/root.css'/>" rel="stylesheet">
<style type="text/css">
body {
	background: #F5F5F5;
}
</style>
</head>
<body>

	<div class="login-form">
		<form action="<c:url value='/login_validateLoginState'/>" method="post">
			<div class="top">
				<img src="<c:url value='/admin_css/img/kode-icon.png'/>" alt="icon" class="icon">
				<h1>JJ</h1>
				<h4>新闻管理系统</h4>
			</div>
			<div class="form-area">
			<p >${msg}</p>
				<div class="group">
					<input type="text" class="form-control"name="user.user_account" placeholder="Account">
					<i class="fa fa-user"></i>
				</div>
				<div class="group">
					<input type="password" class="form-control" name="user.user_password" placeholder="Password">
					<i class="fa fa-key"></i>
				</div>
				<div class="checkbox checkbox-primary">
					<input id="checkbox101" type="checkbox" checked> <label
						for="checkbox101"> Remember Me</label>
				</div>
				<button type="submit" class="btn btn-default btn-block">LOGIN</button>
			</div>
		</form>
		<div class="footer-links row">
			<div class="col-xs-6">
				<a href="#"><i class="fa fa-external-link"></i> Register Now</a>
			</div>
			<div class="col-xs-6 text-right">
				<a href="<c:url value='/admin/index.jsp'/>"><i class="fa fa-lock"></i> Forgot password</a>
			</div>
		</div>
	</div>

</body>
</html>