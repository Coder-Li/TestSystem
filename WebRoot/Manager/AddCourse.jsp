<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>考证管理员登录界面</title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/styles/global_color.css" />
        
                <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/styles/global_color.css" /> 
         <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery-1.10.2.min.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/default/easyui.css" >
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/icon.css"> 
   
   
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
               <ul id="menu">
              <li><a href="ToMagerIndex" class="index_off"></a></li>
               <li><a href="ToAllCourse" class="choosed_off"></a></li>
			<li><a href="ToMagerAddCourse" class="report_on"></a></li>
			<li><a href="ToMagerAgreeCourse" class="account_off"></a></li>
			<li><a href="ToManagerScore" class="bill_off"></a></li>
			<li><a href="ToMagerCourseResult" class="fee_off"></a></li>
			<li><a href="ToMagerPasswd" class="password_off"></a></li>
            </ul>            
            
            </ul>            
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">            
            <!--保存操作后的提示信息：成功或者失败-->
            <div id="save_result_info" class="save_success">保存成功！</div><!--保存失败，数据并发错误！-->
            <form action="ProAddCourse" method="post" class="main_form">

               
                <div class="input_info">
                <table>
                	<tr><td>课程名称：</td><td>  <input type="text" class="readonly width400" value="" name="courseName" />
                    <span class="notice" style="color:red">*必填</span></td></tr>
                    
                    	<tr><td>
                    	考试时间：
                    	</td><td>  
                    	   <input class="easyui-datetimebox ,readonly width400"  name="courseStartTime"   data-options="required:true,showSeconds:false,editable:false" value="3/4/2010 2:3" style="width:150px">
        
                    <span class="notice" style="color:red">*必填</span></td></tr>
                    
                    	<tr>
                    	<td>考试地点
                    	</td><td> 
                    	                      <input type="text" class="readonly width400" value="" name="courseAddress" />
                    <span class="notice" style="color:red">*必填</span></td></tr>
                    
                    
 						<tr><td>
                    	报名开始时间：
                    	</td><td>  
                    	   <input class="easyui-datetimebox ,readonly width400"  name="submitStartTime"   data-options="required:true,showSeconds:false,editable:false" value="3/4/2010 2:3" style="width:150px">
        
                    <span class="notice" style="color:red">*必填</span></td></tr>
                    <tr><td>
                    	报名截止时间：
                    	</td><td>  
                    	   <input class="easyui-datetimebox ,readonly width400"  name="submitEndTime"   data-options="required:true,showSeconds:false,editable:false" value="3/4/2010 2:3" style="width:150px">
        
                    <span class="notice" style="color:red">*必填</span></td></tr>
                    <tr><td>
                    	考试信息：
                    	</td><td>  
                    	  <textarea  name="courseInfo" rows="10" cols="50"></textarea>
        
                    <span class="notice" style="color:red">*必填</span></td></tr>
                    
                    	<tr><td>  <input type="submit" value="添加" class="btn_save" onclick="showResult();" /></td><td>  <input type="reset" value="取消" class="btn_save" />
 						</td></tr>
                </table>

                  
                    
                </div>
            </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
            <p>**********************************</p>            
            <p>版权所有(C)</p>
        </div>
    </body>
</html>
