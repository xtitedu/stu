<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>添加学生信息</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/base.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/page.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/main.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/modernizr.js"></script>
	<style type="text/css">
	.editTable{
		width:80%;
		margin-left: 50px;
	}
	.editTable tr{
		height: 50px;
	}
	
	</style>
</head>

<body style="background: #f6f5fa;">

	<!--content S-->
	<div class="super-content">
		<div class="superCtab">
			<div class="ctab-title clearfix"><h3>基本信息管理</h3></div>
			<div class="ctab-Main">
				<div class="ctab-Main-title">
					<ul class="clearfix">
						<li><a href="list.jsp">信息列表</a></li>
						<li class="cur">添加学生</li>
					</ul>
				</div>
				
				<div class="ctab-Mian-cont">
					<div class="Mian-cont-btn clearfix">
					<form action="doAdd.jsp" method="post">
						<table class="editTable">
							<tr>
								<td align="right">学生编号: </td><td align="left"><input type="text" name="stuNo" value="" class="form-control srhTxt" placeholder=""></td><td align="right">学生姓名:</td><td align="left"><input type="text" name="stuName" value="" class="form-control srhTxt" placeholder=""></td>
							</tr>
							<tr>
								<td align="right">身份证号:</td><td align="left"><input type="text" name="idNum" value="" class="form-control srhTxt" placeholder=""></td><td align="right">出生日期:</td><td align="left"><input type="text" name="birthday" value="" class="form-control srhTxt" placeholder=""></td>
							</tr>
							<tr>
								<td align="right">性别:</td><td align="left">&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="1">男 &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="0">女</td><td align="right">班级:</td><td align="left"><input type="text" name="class" value="" class="form-control srhTxt" placeholder=""></td>
							</tr>
							<tr>
								<td align="right">联系电话:</td><td align="left"><input type="text" name="telNum" value="" class="form-control srhTxt" placeholder=""></td><td align="right">邮箱:</td><td align="left"><input type="text" name="email" value="" class="form-control srhTxt" placeholder=""></td>
							</tr>
							<tr>
								<td align="right">学校:</td><td align="left"><select name="university" class="select_ui"><option value="">--请选择--</option><option value="10459">郑州大学</option><option value="10463">河南工业大学</option><option value="10462">郑州轻工业学院</option> </select> </td><td align="right"></td><td align="left"></td>
							</tr>
							<tr style="height:90px">
								<td align="right">备注:</td><td align="left"><textarea name="memo" class="pub-area-bar" placeholder="" rows="3" cols="30"></textarea></td><td align="right"></td><td align="left"></td>
							</tr>
							<tr>
								<td colspan="2"><button type="submit" class="saveBtn">提交</button></td><td colspan="2"><button type="reset" class="cancelBtn">取消</button> </td>
							</tr>
						</table>
					</form>
					</div>
				</div>
			</div>
		</div>
		<!--main-->
	</div>
	<!--content E-->
</body></html>