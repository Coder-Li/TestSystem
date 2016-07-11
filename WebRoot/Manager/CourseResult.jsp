<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>考试管理员登录界面</title>
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global.css" />



<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/styles/global_color.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/jquery-easyui-1.3.5/themes/icon.css">


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
			<li><a href="ToManagerScore" class="bill_off"></a></li>
			<li><a href="ToMagerCourseResult" class="fee_on"></a></li>
			<li><a href="ToMagerPasswd" class="password_off"></a></li>
		</ul>
	</div>
	<!--导航区域结束-->
	<!--主要区域开始-->


	<script type="text/javascript">
		$(function() {
			$('#dg').datagrid({
				iconCls : 'icon-save',
				pagination : true, //显示分页
				pageSize : 10,
				pageList : [ 3, 5, 10, 15 ],
				fit : true, //大小自适应
				fitColumns : true, //
				nowarp : false, //内容多自动换行
				border : false,
				idField : 'studentCourseId', //多页删除
				sortName : 'studentCourseId',
				//Type:type,
				srotOrder : 'desc',
				url : 'getManagerCourseResult',
				columns : [ [ {
					field : 'studentCourseId',
					checkbox : true
				}, {
					field : 'courseName',
					title : '课程名称',
					width : 100,
					sortable : true,
					editor : {
						type : 'validatebox',
						options : {
							required : true
						}
					}
				},  {
					field : 'studentName',
					title : '学生姓名',
					width : 100,
					sortable : true,
					editor : {
						type : 'validatebox',
						options : {
							required : true
						}
					}
				}, {
					field : 'teacherName',
					title : '老师姓名',
					width : 100,
					sortable : true,
					editor : {
						type : 'validatebox',
						options : {
							required : true
						}
					}
				}, {
					field : 'score',
					title : '考证成绩结果',
					width : 100,
					sortable : true,
					editor : {
						type : 'combobox',
						options : {
							valueField : 'value',
							textField : 'label',
							data : [ {
								label : '成绩通过',
								value : '1'
							}, {
								label : '成绩没有通过',
								value : '2'
							} ,{
								label : '所有成绩',
								value : '0'
							}
							]
						}
					}
				},

				] ],

			});
			Myserach = function() {
				$('#dg').datagrid(
						'load',
						{
							type : $('#admin_user_searchFrom').find(
									'[name=Type]').val(),
						});
			};
			MyClear = function() {
				$('#dg').datagrid('load', {
					name : '',
					Enddate : '',
					Startdate : '',
				});
			};

		});
	</script>



	<!--主要区域结束-->

	<center>
	<form id="admin_user_searchFrom">
		<table style="width:80%;" class="datagrid-toolbar">
			<tr>
				<th style="width: 10%">考证成绩</th>
				<td style="width: 10%">
				<select id="cc" class="easyui-combobox" name="Type"
					style="width:200px;">
						<option value="0">所有考证成绩</option>
						<option value="2">考试通过</option>
						<option value="1">考试没有通过</option>
						<option value="3">未打分</option>
				</select></td>
				<td>
				<a href="javascript:void(0);" class="easyui-linkbutton" onclick="Myserach()">查询</a>
			</td>
			</tr>

		</table>
</form>

		<div id="cc" class="easyui-layout" style="width:80%;height:500px;">
			<div data-options="region:'center',title:'结果'"
				style="padding:5px;background:#eee;">
				<table id="dg"></table>
			</div>
		</div>

	</center>



	<!--主要区域结束-->
	<div id="footer">
		<p>************************************</p>
		<p>版权所有(C)</p>
	</div>
</body>
</html>
