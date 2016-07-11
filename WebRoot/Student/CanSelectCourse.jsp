<%@page import="com.studentsystem.doamin.TeachercourseBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java"
	import=" com.studentsyste.dao.impl.HibernateStudentDao"%>
<%@ page language="java" import="com.studentsystem.doamin.Course"%>
<%@ page language="java" import="com.studentsystem.doamin.Teachercourse"%>
<%@ page language="java" import="com.studentsystem.doamin.User"%>
<%@ page language="java"
	import="com.studentsystem.doamin.Studentcourse;"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>学生考证管理系统界面</title>
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global_color.css" />
<script type="text/javascript" src="../js/jquery-1.4.3.js"></script>
<script type="text/javascript" src="../js/validate.js"></script>


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
            //重置密码
            function resetPwd() {
                alert("请至少选择一条数据！");
                //document.getElementById("operate_result_info").style.display = "block";
            }
            //删除
            function deleteAdmin() {
                var r = window.confirm("确定要删除此管理员吗？");
                document.getElementById("operate_result_info").style.display = "block";
            }
            //全选
            function selectAdmins(inputObj) {
                var inputArray = document.getElementById("datalist").getElementsByTagName("input");
                for (var i = 1; i < inputArray.length; i++) {
                    if (inputArray[i].type == "checkbox") {
                        inputArray[i].checked = inputObj.checked;
                    }
                }
            }
        </script>
</head>
<body>
        <!--Logo区域开始-->
        <div id="header" style="margin-top: 20px">
        <h1 align="left">学生考证管理系统界面</h1>
            <a href="Logout">[退出]</a>            
        </div>
        <!--Logo区域结束-->
	<!--Logo区域开始-->
	<div id="navi">
		<ul id="menu">
			<li><a href="ToStudentIndex" class="index_off"></a></li>
			<li><a href="AlreadySelectCourse.action" class="choosed_off"></a></li>
			<li><a href="ToCanSelectCourse.action" class="report_on"></a></li>
			<li><a href="StudentCourseResult" class="fee_off"></a></li>
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
			idField:'teacherCouseId',    //多页删除
			sortName:'teacherCouseId',
			srotOrder:'desc',
		    url:'getCanSelectCourse',
		    columns:[[
		        {field:'teacherCouseId',checkbox:true},
		         {field:'userTeacher',title:'老师名',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'courseName',title:'课程名称',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'courseTime',title:'考试时间',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'courseAddress',title:'考试地点',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'submitStartTime',title:'报名开始时间',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'submitEndTime',title:'报名结束时间',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'courseInfo',title:'考试信息',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},

		    ]],
		    toolbar:[{
				text:'选课',iconCls:'icon-remove',handler:function(){
					 var rows=$('#dg').datagrid('getSelections');
					 if(rows.length==1){
						 $.messager.confirm("请确认",'确定选课',function(b){
							 if(1){
			
								$.ajax({
									url:'StudentSelectCourse',
									data:{teacherId:rows[0].teacherId, 
										couseId:rows[0].couseId,
									},
									dataType:'json',
									success:function(r){
										console.info(r);
										if(r&&r.success){
											$('#dg').datagrid('load');
											$('#dg').datagrid('unselectAll');
											$.messager.show({msg:r.msg,title:'成功'});
										}else{
											$('#dg').datagrid('rejectChanges');
											$.messager.alert('错误',r.msg,'error');
											 $('#dg').datagrid('unselectAll');
										}
									}
								});
							 }
						 }); 
					 }else{
						 $.messager.alert("提示",'请选择一个要选课程！','error');
						 $('#dg').datagrid('unselectAll');
					 }
				}}],
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
		<p>*********************************</p>
		<p>版权所有(C)</p>
	</div>
</body>
</html>
