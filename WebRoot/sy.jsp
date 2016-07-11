<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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

         <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery-1.10.2.min.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/default/easyui.css" >
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/icon.css"> 

		<script type="text/javascript" language="javascript">
		
				    
				    
				    
				    
 $(function(){
	  $('#dg').datagrid({
		  iconCls:'icon-save',
			pagination:true,  //显示分页
			pageSize:5,    
			pageList :[3,5,10,15], 
			fit:true,       //大小自适应
			fitColumns:true,  //
			nowarp:false,     //内容多自动换行
			border:false,    
			idField:'courseId',    //多页删除
			sortName:'courseId',
			srotOrder:'desc',
		    url:'getManagerAllCourse',
		    columns:[[
		         {field:'courseName',title:'考试名称',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'courseStartTime',title:'考试时间',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'courseAddress',title:'考试地点',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},       
		    ]],
			
		});
	  
  });
		</script>
</head>

<body style="background: url(images/login_bg.jpg)">
	<div align="left" style="width: 100%; height:20px;margin-top: 100px">
			<ul>
			    <a href="Login.action" style="color: white;text-decoration: none;"><b>用户登录</b></a> &nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Register.action" style="color: white ;text-decoration: none;"><b>用户注册</b></a> &nbsp;&nbsp;&nbsp;&nbsp;
			</ul>
	</div>
	
	
<div id="win" class="easyui-window" title="公告" style="width:600px;height:400px"
        data-options="modal:true ,resizable:false,draggable:false,minimizable:false">
          <h2 style="color:red" align="center">最新公告信息</h2>
   <div data-options="region:'center',title:'结果'" style="padding:5px;background:#eee;height: 300px">
     <table id="dg" ></table>
    </div>
</div>


	
</body>