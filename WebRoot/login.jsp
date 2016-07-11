<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户登录界面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/index.css">

<script type="text/javascript" language="javascript">
	function checklogin(form) {
		if (form.username.value == "") {
			alert("用户名不能为空！");
			form.username.focus()
			return false;
		}
		if (form.password.value == "") {
			alert("密码不能为空！");
			form.password.focus();
			return false;
		}
	}
</script>
</head>

<body style="background: url(images/login_bg.jpg)">
	<div align="right">
		<div class="div1">
			<ul>
				<br />
				<a href="Register.action" style="color: red">用户注册</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
			</ul>
		</div>
		<center>
			<h1 style="color: red">
				<s:property value="tip" />
			</h1>
		</center>
		<div class="div2">

			<h2 align="center">考证管理系统登录界面</h2>
			<form action="proLogin" method="post"
				onsubmit="return checklogin(this)">
				<table align="center" width="300" border="0" class="tb1">
					<tr>
						<td align="right">用&nbsp;户&nbsp;名：</td>
						<td><input type="text" name="user.userName" id="username"></td>
					</tr>
					<tr>
						<td align="right">密&nbsp;&nbsp;&nbsp; 码：</td>
						<td><input type="password" name="user.userPass" id="password"></td>
					</tr>
					<tr>
						<td align="right">用户类型：</td>
						<td>    <label>学生<input type="radio" name="user.type" value="2" checked="checked" /></label> 
								<label>老师<input type="radio" name="user.type" value="1" /></label> 
								<label>管理员<input type="radio" name="user.type" value="0" /></label><br/>
								<label>用户管理员<input type="radio" name="user.type" value="3" /></label>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center" height="50"><input
							type="submit" value="登 录" /> <input type="reset" value="重 置" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>