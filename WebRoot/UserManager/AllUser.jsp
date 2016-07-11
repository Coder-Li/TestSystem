<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>

        <title>考证管理员登录界面</title>
    
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
        <h1 align="left">考证管理员登录界面</h1>
            <a href="Logout">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">                        
            <ul id="menu">

             <li><a href="ToUserMagerIndex" class="index_off"></a></li>
             <li><a href="ToAllUser" class="information_off"></a></li>

            </ul>            
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->

           

  <script type="text/javascript">
  editRow=undefined;
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
			idField:'UserId',    //多页删除
			sortName:'UserId',
			srotOrder:'desc',
		    url:'getAllUser',
		    columns:[[
		        {field:'UserId',checkbox:true},
		         {field:'userName',title:'用户姓名',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'userRealName',title:'用户真名',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'userPass',title:'用户密码',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},
		         {field:'tel',title:'电话号码',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }},     
		         {field:'type',title:'类别（不可修改）',width:100,fixed:true,sortable:true}, 
		         {field:'age',title:'年龄',width:100,sortable:true,editor:{
		        	  type:'validatebox',
		        	  options:{required:true}
		         }}, 
	
		    ]],
		    toolbar:[{
				text:'修改',iconCls:'icon-edit',handler:function(){
				 var rows=$('#dg').datagrid('getSelections');
				 console.info(rows.lenght);
				 if(rows.length==1){
					 var index=$('#dg').datagrid('getRowIndex', rows[0]);

					 if(editRow!=undefined){
							$('#dg').datagrid('endEdit',editRow);
					}else{
							$('#dg').datagrid('beginEdit',index);
							editRow=index;
							$('#dg').datagrid('unselectAll');
					}
				 }
					
				}},{
					text:'保存',iconCls:'icon-save',handler:function(){
						$('#dg').datagrid('endEdit',editRow);
		
					}},{
						text:'取消编辑',iconCls:'icon-redo',handler:function(){
							editRow=undefined;
							$('#dg').datagrid('rejectChanges');
							$('#dg').datagrid('unselectAll');
						}}
					],
					onAfterEdit :function(rowIndex,rowData,changes){
						 var inserted=$('#dg').datagrid('getChanges','inserted');
						 var updateed=$('#dg').datagrid('getChanges','updated');		
						var url='';
						if(inserted.length>0){
							url="MAddUser";
						}
						if(updateed.length>0){
							url="MAddUser";
						}
						$.ajax({
							url:url,
							data:rowData,
							dataType:'json',
							success:function(r){
								console.info(r);
								if(r&&r.success){
									$('#dg').datagrid('acceptChanges');
									$.messager.show({msg:r.msg,title:'成功'});
									$('#dg').datagrid('load');
									
								}else{
									$('#dg').datagrid('rejectChanges');
									$.messager.alert('错误',r.msg,'error');
								}
								editRow=undefined;
								$('#dg').datagrid('unselectAll');
							},
							
							});
						
						},
				
						onDblClickRow :function(rowIndex,rowData){
							if(editRow!=undefined){
								$('#dg').datagrid('endEdit',editRow);
							}else{
								$('#dg').datagrid('beginEdit',rowIndex);
								editRow=rowIndex;
							}
						}
				
			
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
            <p>************************</p>
            <p>版权所有(C) </p>
        </div>

        
    </body>
</html>
