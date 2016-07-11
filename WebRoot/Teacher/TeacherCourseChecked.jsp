<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>教师考证管理系统界面</title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/teacherindex.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/styles/global_color.css" /> 
     
     	     <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/default/easyui.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/icon.css"> 
     
     
     
        <script language="javascript" type="text/javascript">
            //显示角色详细信息
            function showDetail(flag, a) {
                var detailDiv = a.parentNode.getElementsByTagName("div")[0];
                if (flag) {
                    detailDiv.style.display = "block";
                }
                else
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
                <li><a href="ToTeacherIndex" class="index_off" ></a></li>
              <li><a href="AlreadyOpenCourse" class="choosed_off"></a></li>
                <li><a href="TeacherAddCourse" class="report_off"></a></li>
                <li><a href="TeacherCourseResult" class="fee_off"></a></li>
                <li><a href="TeacherCourseChecked" class="checked_on"></a></li>
                <li><a href="ToTeacherPasswd" class="password_off"></a></li>
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
			pageList :[3,5,10,15], 
			fit:true,       //大小自适应
			fitColumns:true,  //
			nowarp:false,     //内容多自动换行
			border:false,    
			idField:'studentCourseId',    //多页删除
			sortName:'studentCourseId',
			srotOrder:'desc',
		    url:'getTeacherCourseChecked',
		    columns:[[
		        {field:'studentCourseId',checkbox:true},
		         {field:'studentName',title:'学生姓名',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'courseName',title:'课程名称',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		  
		         {field:'score',title:'考试分数',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'submitTime',title:'报名时间',width:100,sortable:true,editor:{
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
        <!--主要区域结束-->
        <div id="footer">
            <p>************************</p>
            <p>版权所有(C) </p>
        </div>
    </body>
</html>
