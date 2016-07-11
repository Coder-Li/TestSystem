<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import=" com.studentsyste.dao.impl.HibernateStudentDao" %>
<%@ page language="java" import="com.studentsystem.doamin.Course" %>
<%@ page language="java" import="com.studentsystem.doamin.Teachercourse" %>
<%@ page language="java" import="com.studentsystem.doamin.User" %>
<%@ page language="java" import="com.studentsystem.doamin.Studentcourse;" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>学生考证管理系统界面</title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/styles/global_color.css" /> 
      
  	
	     <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/default/easyui.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/icon.css"> 
     
       
	   
      
      
        <script language="javascript" type="text/javascript">
            //删除
            function deleteAccount() {
                var r = window.confirm("确定要删除此账务账号吗？\r\n删除后将不能恢复，且会删除其下属的所有业务账号。");
                document.getElementById("operate_result_info").style.display = "block";
            }
            //开考或不开考
            function setState() {
                var r = window.confirm("确定要开考此账务账号吗？");
                document.getElementById("operate_result_info").style.display = "block";
            }
        </script>
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header" style="margin-top: 25px">
        <h1 align="left">学生考证管理系统界面</h1>
            <a href="Logout.action">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">                        
            <ul id="menu">
                <li><a href="ToStudentIndex" class="index_off" ></a></li>
                 <li><a href="AlreadySelectCourse.action" class="choosed_off"></a></li>
                  <li><a href="ToCanSelectCourse.action" class="report_off"></a></li>
                    <li><a href="StudentCourseResult" class="fee_on"></a></li>
                     <li><a href="ModifyPasswd" class="password_off"></a></li>
            </ul>              
        </div>
        <!--导航区域结束-->
   <!--导航区域结束-->
	    <script type="text/javascript">

  $(function(){
	  $('#dg').datagrid({
		  iconCls:'icon-save',
			pagination:true,  //显示分页
			pageSize:10,    
			pageList :[2,3,5,10,20], 
			fit:true,       //大小自适应
			fitColumns:true,  //
			nowarp:false,     //内容多自动换行
			border:false,    
			idField:'studentCourseId',    //多页删除
			sortName:'studentCourseId',
			srotOrder:'desc',
		    url:'getAlreadySelectCourse',
		    columns:[[
		        {field:'studentCourseId',checkbox:true},
		         {field:'teacherName',title:'老师名',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'couseId',title:'课程ID',width:100,sortable:true, hidden:true, editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},

		         {field:'teacherId',title:'老师ID',width:100,sortable:true, hidden:true,  editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'courseName',title:'课程名称',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'score',title:'分数',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
	
		    ]],
		});
	  
  });

  </script>


             
    <!--主要区域结束-->
   <center>
   <div id="cc" class="easyui-layout" style="width:80%;height:500px;">
    <div data-options="region:'center',title:'结果'" style="padding:5px;background:#eee;">
     <table id="dg" ></table>
    </div>
</div>  
</center>            
        <div id="footer">
            <p>************************************</p>
            <p>版权所有(C)</p>
        </div>
    </body>
</html>
