<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>考证管理员登录界面</title>
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global_color.css" />
</head>
<body>
	<!--Logo区域开始-->
	<div id="header" style="margin-top: 25px">
		<h1 align="left">考证管理员登录界面</h1>
		<a href="Logout">[退出]</a>
	</div>
	<!--Logo区域结束-->
	<!--导航区域开始-->
	<div id="navi">
		<ul id="menu">
			<li><a href="ToMagerIndex" class="index_on"></a></li>
			<li><a href="ToAllUser" class="information_off"></a></li>
		</ul>
	</div>
	<!--导航区域结束-->
	<!--主要区域开始-->

	<div id="main">
		<form action="#" method="post">
			<!--数据区域：用表格展示数据-->
			<div id="data">
		<center>
		

					<h1 style="color: red">
				<s:property value="tip" />
			</h1>


			<h1 style="color: blue">
				你好
				[<s:property value="#session.user.getUserRealName()" />]
				，欢迎登陆
			</h1>

			
		</center>
			</div>
		</form>
	</div>
	<!--主要区域结束-->
	<div id="footer">
		<p>************************************</p>
		<p>版权所有(C)</p>
	</div>
</body>
</html>
