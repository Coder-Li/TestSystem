<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
	<%
	 String path = request.getContextPath();
	 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>用户注册</title>
    	<link rel="stylesheet" type="text/css" href="css/reg.css">
        <script type="text/javascript">


        function validate_form()
        {

   			if(document.getElementById("userName").value==""){
   				alert("请输入用户名！");
   				return false;
   			}else if(document.getElementById("userRealName").value==""){
   				alert("请输入用户名真姓名！");
   				return false;
   			}else if(document.getElementById("userPass").value==""){
   				alert("请输入密码！");
   				return false;
   			}else{
   				return true;
   			}
   			
        }
	    </script>
  </head>
  
  <body style="background: url(images/login_bg.jpg)">
  	 <div align="center">
				  	 <div class="reg"> 
				  	 <h2>用户注册界面</h2>
					    <form action="ProRegister" method="post"   onsubmit="return validate_form()">
						    <table align="center" width="450" border="0">
						    	<tr>
						    		<td align="right">用户名：</td>
						    		<td>
						    			<input id="userName" type="text" name="userName">
						    		</td>
						    	</tr>
						    		<tr>
						    		<td align="right">用户名真实姓名：</td>
						    		<td>
						    			<input id="userRealName" type="text" name="userRealName">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td align="right">密 码：</td>
						    		<td>
						    			<input id="userPass" type="password" name="userPass">
						    		</td>
						    	</tr>
		
						    	<tr>
						    		<td align="right">用户类型：</td>
						    		<td>
						    			<input   checked="checked" type="radio" name="type" value=1 >老师
						    			<input type="radio" name="user.type" value=2>学生
						    		</td>
						    	</tr>
						    	    	<tr>
						    		<td align="right">性别：</td>
						    		<td>
						    			<input type="radio" checked="checked" name="sex" value=1 >男
						    			<input type="radio" name="user.sex" value=0>女
						    		</td>
						    	</tr>
						    	<tr>
						    		<td align="right">联系电话：</td>
						    		<td>
						    			<input type="text" name="tel">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td align="right">年龄：</td>
						    		<td>
						    			<input type="text" name="age">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td colspan="2" align="center">
						    			<input type="submit" value="注 册" >
						    			<input type="reset" value="重 置">
						    		</td>
						    	</tr>
						    </table>
					    </form>
				  	 </div>
				</div>
  </body>
</html>
