<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>教师首页</title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/styles/global_color.css" /> 
       
     <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/default/easyui.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/icon.css"> 
     
       
       
       
       
        <script language="javascript" type="text/javascript">
            //同意或不同意
            function setState() {
                var r = window.confirm("同意开设课程");
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
			<li><a href="ToMagerAgreeCourse" class="account_on"></a></li>
			<li><a href="ToManagerScore" class="bill_off"></a></li>
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
			pageList :[2,3,5,10,15], 
			fit:true,       //大小自适应
			fitColumns:true,  //
			nowarp:false,     //内容多自动换行
			border:false,    
			idField:'teacherCouseId',    //多页删除
			sortName:'teacherCouseId',
			srotOrder:'desc',
		    url:'getMagerAgreeCourse',
		    columns:[[
		        {field:'teacherCouseId',checkbox:true},
		         {field:'userTeacher',title:'老师名',width:100,sortable:true,editor:{
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
		         
		    ]],
			toolbar:[{
				text:'审核',iconCls:'icon-remove',handler:function(){
					 var rows=$('#dg').datagrid('getSelections');
					 if(rows.length>0){
						 $.messager.confirm("请确认",'确定审核？',function(b){
							 if(b){
								var ids=[];
								for(var i=0;i<rows.length;i++){
									ids.push(rows[i].teacherCouseId);
								}
								$.ajax({
									url:'ProMagerAgreeCourse',
									data:{ids:ids.join(',')},
									dataType:'json',
									success:function(r){
										if(r&&r.success){
											$('#dg').datagrid('load');
											$('#dg').datagrid('unselectAll');
											$.messager.show({msg:r.msg,title:'成功'});
										}else{
											$('#dg').datagrid('rejectChanges');
											$.messager.alert('错误',r.msg,'error');
										}
									}
								});
							 }
						 }); 
					 }else{
						 $.messager.alert("提示",'请选择要审核的课程！','error');
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
         
        
        
        
        <div id="footer">
            <p>************************************</p>
            <p>版权所有(C)</p>
        </div>
    </body>
</html>
