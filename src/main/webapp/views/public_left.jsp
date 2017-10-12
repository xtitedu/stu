<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String ctxPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=ctxPath %>/static/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="<%=ctxPath %>/static/js/jquery-1.6.min.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span></div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="<%=ctxPath %>/static/images/leftico01.png" /></span>系统信息
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="server/status.jsp" target="rightFrame">服务器状态信息</a><i></i></li>
        <li><cite></cite><a href="index.html" target="rightFrame">用户管理</a><i></i></li>
        <li><cite></cite><a href="dic/list.jsp" target="rightFrame">数据字典管理</a><i></i></li>
        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="<%=ctxPath %>/static/images/leftico02.png" /></span>学生信息管理
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="stu/list.jsp" target="rightFrame">学生管理</a><i></i></li>
        <li><cite></cite><a href="#">班级管理</a><i></i></li>
        <li><cite></cite><a href="#">档案列表显示</a><i></i></li>
        </ul>     
    </dd> 
    
    </dl>
    
</body>
</html>
