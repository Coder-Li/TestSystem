<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>考证管理员登录界面</title>
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global_color.css" />
	
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
		<h1 align="left">考证管理员登录界面</h1>
		<a href="Logout">[退出]</a>
	</div>
	<!--Logo区域结束-->
	<!--导航区域开始-->
	<div id="navi">
		<ul id="menu">
			<li><a href="ToMagerIndex" class="index_off"></a></li>
			<li><a href="ToAllCourse" class="choosed_off"></a></li>
			<li><a href="ToMagerAddCourse" class="report_off"></a></li>
			<li><a href="ToMagerAgreeCourse" class="account_off"></a></li>
			<li><a href="ToManagerScore" class="bill_on"></a></li>
			<li><a href="ToMagerCourseResult" class="fee_off"></a></li>
			<li><a href="ToMagerPasswd" class="password_off"></a></li>
		</ul>
	</div>
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
		    url:'getManagerScore',
		    columns:[[
		        {field:'studentCourseId',checkbox:true},
		         {field:'studentName',title:'学生名',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'teacherName',title:'老师名',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'courseName',title:'课程名',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'score',title:'分数',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         
		    ]],
			toolbar:[{text:'打分',iconCls:'icon-add',handler:function(){
					
			  		 var rows=$('#dg').datagrid('getSelections');
			  		 if(rows.length>=1){
			 	  	  	$(function(){
			 	  	  	$('#loginAndReg').show();
			 	  	  	
			 	  	  	var Date=rows[0];
			 	  	  	
			 	  	  	$('#studentCourseID').val(Date.studentCourseId);
			 	  	    $('#studentName').val(Date.studentName);
			 	     	$('#teacherName').val(Date.teacherName);
			 	  	    $('#courseName').val(Date.courseName);
			 	  	  	
				  		var loginAndReg;
				  		var loginInputForm;
				  	  		loginAndReg=$('#loginAndReg').dialog({
				  	  			  //closable:false,   //关闭按钮
				  	  			  modal:true,    //
				  	  			  buttons:[{
				  	  				 text:'提交',
				  	  				 handler:function(){
				  	  					 loginInputForm.submit();
				  	  				 },
				  	  			  }],
				  	  			});
				  	  	loginInputForm=$('#loginInputForm').form({
				  	  		url:'ProManagerScore',
				  	  		success:function(data){
				  	  		 $('#dg').datagrid('unselectAll');
				  	  		console.info(data);
				  	    	var temp = eval("("+data+")");	//包数据解析为json 格式  

				  	  		  console.info(temp);
				  	  		    loginAndReg.dialog('close');
				  	  			$.messager.show({
				  	  				title:'提示',
				  	  				msg:temp.msg,
				  	  			});
				  	  		$('#dg').datagrid('load');
				  	  		}
				  	  		});
				  	  	});
					
			  		 }else{
			  			 $('#dg').datagrid('unselectAll');
			  			 $.messager.alert("提示",'请选择要打分的学生！','error');
			  		 }
			  		
				}},],
				
			
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
	
		<div id="loginAndReg" title="添加" style="width: 300px; display:none; height: 250px">
		<form id="loginInputForm" method="post">
			<table>
			   <tr><td>ID</td><td><input type="text" id="studentCourseID" readonly="readonly" name="studentCourseID"></td></tr>
				<tr><td>学生姓名：</td><td><input type="text" id="studentName" readonly="readonly"  name="studentName"></td></tr>
				 <tr><td>老师姓名：</td><td><input type="text" id="teacherName" readonly="readonly"  name="teacherName"></td></tr>
				 <tr><td>课程名称：</td><td><input type="text" id="courseName" readonly="readonly"  name="courseName"></td></tr>
				  <tr><td>分数</td><td><input type="text" id="score" name="score"></td></tr>
			</table>
		</form>
		</div>
	
	
	<!--主要区域结束-->
	<div id="footer">
		<p>************************************</p>
		<p>版权所有(C)</p>
	</div>
</body>
</html>
