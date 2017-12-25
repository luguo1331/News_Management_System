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
<title>管理员页面</title>
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

			<div class="daohang">
				<ul>
				</ul>
			</div>

			<div class="am-popup am-popup-inner" id="my-popup">

				<div class="am-popup-hd">
					<h4 class="am-popup-title">添加商品一级分类</h4>
					<span data-am-modal-close class="am-close">&times;</span>
				</div>

				<div class="am-popup-bd">


					<form class="am-form tjlanmu">


						<div class="am-form-group">
							<div class="zuo">栏目名称：</div>
							<div class="you">
								<input type="email" class="am-input-sm" id="doc-ipt-email-1"
									placeholder="请输入标题">
							</div>
						</div>
						<div class="am-form-group">
							<div class="zuo">栏目关键词：</div>
							<div class="you">
								<input type="password" class="am-input-sm" id="doc-ipt-pwd-1"
									placeholder="请输入关键词">
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">栏目描述：</div>
							<div class="you">
								<textarea class="" rows="2" id="doc-ta-1"></textarea>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">栏目图片：</div>
							<div class="you" style="height: 45px;">
								<input type="file" id="doc-ipt-file-1">
								<p class="am-form-help">请选择要上传的文件...</p>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">简介：</div>
							<div class="you">
								<textarea class="" rows="2" id="doc-ta-1"></textarea>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">状态：</div>
							<div class="you" style="margin-top: 3px;">
								<label class="am-checkbox-inline"> <input
									type="checkbox" value="option1"> 显示
								</label> <label class="am-checkbox-inline"> <input
									type="checkbox" value="option2"> 隐藏
								</label>

							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="you">
								<p>
									<button type="submit" class="am-btn am-btn-success am-radius">提交</button>
								</p>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class="am-popup am-popup-inner" id="my-popups">
				<div class="am-popup-hd">
					<h4 class="am-popup-title">修改栏目名称</h4>
					<span data-am-modal-close class="am-close">&times;</span>
				</div>

				<div class="am-popup-bd">

					<form class="am-form tjlanmu">


						<div class="am-form-group">
							<div class="zuo">栏目名称：</div>
							<div class="you">
								<input type="email" class="am-input-sm" id="doc-ipt-email-1"
									placeholder="请输入标题">
							</div>
						</div>
						<div class="am-form-group">
							<div class="zuo">栏目关键词：</div>
							<div class="you">
								<input type="password" class="am-input-sm" id="doc-ipt-pwd-1"
									placeholder="请输入关键词">
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">栏目描述：</div>
							<div class="you">
								<textarea class="" rows="2" id="doc-ta-1"></textarea>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">栏目图片：</div>
							<div class="you" style="height: 45px;">
								<input type="file" id="doc-ipt-file-1">
								<p class="am-form-help">请选择要上传的文件...</p>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">简介：</div>
							<div class="you">
								<textarea class="" rows="2" id="doc-ta-1"></textarea>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">状态：</div>
							<div class="you" style="margin-top: 3px;">
								<label class="am-checkbox-inline"> <input
									type="checkbox" value="option1"> 显示
								</label> <label class="am-checkbox-inline"> <input
									type="checkbox" value="option2"> 隐藏
								</label>

							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="you">
								<p>
									<button type="submit" class="am-btn am-btn-success am-radius">提交</button>
								</p>
							</div>
						</div>
					</form>

				</div>

			</div>

			<div class="admin-biaogelist">
				<div style="position:relative;">
				<div class="listbiaoti am-cf">
					<ul class="am-icon-users">类型管理
					</ul>

					<dl class="am-icon-home" style="float: right;">
						当前位置： 首页 >
						<a href="#">类型管理</a>
					</dl>

					<dl>

					</dl>
					<!--这里打开的是新页面-->

				</div>
				<form class="am-form am-g">
					<table width="100%"
						class="am-table am-table-bordered am-table-striped am-table-hover am-text-middle">
						<thead>
							<tr class="am-success">
								<th class="table-id">ID：</th>
								<th class="table-id">类型</th>
								<th width="130px" class="table-set">操作</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${categories}" var="category">
								<TR
									style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
									<TD>${category.category_id }</TD>
									<TD>${category.category_name }</TD>
									<TD><a
										href="<c:url value='/admin_updateCategory?category_id=${category.category_id }'/>">修改</a>
										<a
										href="<c:url value='/admin_deleteCategory?category_id=${category.category_id }'/>">删除</a>
									</TD>
								</TR>
							</c:forEach>

						</tbody>
					</table>
					<hr />
					<p>注：.....</p>
				</form>

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
	</div>
	<script src="<c:url value='/assets/js/amazeui.min.js'/>"></script>
</body>
</html>