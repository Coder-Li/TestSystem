<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教师考证管理系统界面</title>
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/css/teacherindex.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global_color.css" />
<script language="javascript" type="text/javascript">
	//显示角色详细信息
	function showDetail(flag, a) {
		var detailDiv = a.parentNode.getElementsByTagName("div")[0];
		if (flag) {
			detailDiv.style.display = "block";
		} else
			detailDiv.style.display = "none";
	}
	//删除
	function deleteAccount() {
		var r = window.confirm("确定要删除此业务账号吗？删除后将不能恢复。");
		document.getElementById("operate_result_info").style.display = "block";
	}
	//开通或暂停
	function setState() {
		var r = window.confirm("确定要开通此业务账号吗？");
		document.getElementById("operate_result_info").style.display = "block";
	}
</script>
</head>
<body>
	<!--Logo区域开始-->
	<div id="header">
		<h1 align="left">教师考证管理系统界面</h1>
		<a href="Logout">[退出]</a>
	</div>
	<!--Logo区域结束-->
	<!--导航区域开始-->
	<div id="navi">
		<ul id="menu">
			<li><a href="ToTeacherIndex" class="index_on"></a></li>
			<li><a href="AlreadyOpenCourse" class="choosed_off"></a></li>
			<li><a href="TeacherAddCourse" class="report_off"></a></li>
			<li><a href="TeacherCourseResult" class="fee_off"></a></li>
			<li><a href="TeacherCourseChecked" class="checked_off"></a></li>
			<li><a href="ToTeacherPasswd" class="password_off"></a></li>
		</ul>
	</div>
	<!--导航区域结束-->
	<!--主要区域开始-->
	<div id="main">
		<form action="##" method="post">

			<!--数据区域：用表格展示数据-->
			<div id="data">
				<center>
						<h1 style="color: red">
				<s:property value="tip" />
			</h1>
					<h1 style="color: blue">
						你好 [
						<s:property value="#session.user.getUserRealName()" />
						] ，欢迎登陆！
					</h1>
				</center>
			</div>

		</form>
	</div>
	<!--主要区域结束-->
	<div id="footer">
		<p>************************</p>
		<p>版权所有(C)</p>
	</div>
</body>
</html>
