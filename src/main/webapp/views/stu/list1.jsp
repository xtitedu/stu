<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.xt.stu.stuinfo.StuInfo" %>
<%@ page import="com.xt.stu.stuinfo.StuService" %>
<!DOCTYPE html>
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>活动管理</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/base.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/page.css">
	<!--[if lte IE 8]>
	<link href="css/ie8.css" rel="stylesheet" type="text/css"/>
	<![endif]-->
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/main.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/modernizr.js"></script>
	<!--[if IE]>
	<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>

<body style="background: #f6f5fa;">
<%
StuService stuInfo = new StuService();
List<StuInfo> stuList = stuInfo.getStuInfoByAttrs(null);



%>
	<div class="super-content">
		<div class="superCtab">
			<div class="ctab-title clearfix"><h3>基本信息管理</h3></div>
			<div class="ctab-Main">
				<div class="ctab-Main-title">
					<ul class="clearfix">
						<li class="cur">信息列表</li>
						<li><a href="add.jsp">添加学生</a></li>
					</ul>
				</div>
				
				<div class="ctab-Mian-cont">
					<div class="Mian-cont-btn clearfix">
						<div class="searchBar">
							<input type="text" id="" value="" class="form-control srhTxt" placeholder="输入标题关键字搜索">
							<input type="button" class="srhBtn" value="">
						</div>
					</div>
					<div class="Mian-cont-wrap">
						<div class="defaultTab-T">
							<table border="0" cellspacing="0" cellpadding="0" class="defaultTable">
								<tbody><tr><th class="t_1">学号</th><th class="t_2">姓名</th><th class="t_3">班级</th><th class="t_5">学校</th><th class="t_5">联系电话</th><th class="t_5">Email</th><th class="t_4">操作</th></tr>
							</tbody></table>
						</div>
						<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
							<tbody>
							<%
								for(StuInfo stu : stuList){
							%>
							<tr>
								<td class="t_1"><%=stu.getStuNo() %></td>
								<td class="t_2"><%=stu.getStuName() %></td>
								<td class="t_3"><%=stu.getClassId() %></td>
								<td class="t_5"><%=stu.getUniversity() %></td>
								<td class="t_5"><%=stu.getTelNum() %></td>
								<td class="t_5"><%=stu.getEmail() %></td>
								<td class="t_4"><div class="btn"><a class="Top">置顶</a><a href="#" class="modify">修改</a><a href="#" class="delete">删除</a></div></td>
							</tr>
							<%
								}
							%>
						</tbody></table>
						<!--pages S-->
						<div class="pageSelect">
							<span>共 <b>188</b> 条 每页 <b>10 </b>条   1/18</span>
							<div class="pageWrap">
								<a class="pagePre"><i class="ico-pre">&nbsp;</i></a>
								<a href="#" class="pagenumb cur">1</a>
								<a href="#" class="pagenumb">2</a>
								<a href="#" class="pagenumb">3</a>
								<a href="#" class="pagenext"><i class="ico-next">&nbsp;</i></a>
							</div>
						</div>
						<!--pages E-->
					</div>
				</div>
			</div>
		</div>
		<!--main-->
	</div>
</body></html>