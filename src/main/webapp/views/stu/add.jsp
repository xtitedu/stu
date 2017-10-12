<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.xt.stu.util.DateUtil" %>
<%@ page import="java.util.Date" %>
<%
	String ctxPath = request.getContextPath();
	String stuNo = DateUtil.formatDateByFormat(new Date(), "yyyyMMdd") + (int)(Math.random()*10);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加学生信息</title>
<link href="<%=ctxPath %>/static/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=ctxPath%>/static/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
function submitData(){
	return true;
}

</script>
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">添加学生信息</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div class="formtitle"><span>基本信息</span></div>
    <form action="doAdd.jsp" method="post" onsubmit="submitData();">
    <table class="tableForm">
    	<tr>
    		<td class="tdLabel">学生编号：</td><td><input name="stuNo" type="text" class="dfinput" value="<%=stuNo%>"/></td>
    		<td class="tdLabel">学生姓名：</td><td><input name="stuName" type="text" class="dfinput" /></td>
    	</tr>
    	<tr>
    		<td class="tdLabel">性别：</td><td><input name="gender" type="radio" value="F"/>&nbsp;女&nbsp;&nbsp;&nbsp;&nbsp;<input name="gender" type="radio" value="M"/>&nbsp;男</td>
    		<td class="tdLabel">身份证号：</td><td><input name="idNum" type="text" class="dfinput" /></td>
    	</tr>
    	<tr>
    		<td class="tdLabel">学校：</td>
    		<td>
    			<select class="dfinput" name="university">
    				<option value="10459">郑州大学</option>
    				<option value="10463">河南工业大学</option>
    				<option value="10462">郑州轻工业学院</option>
    				<option value="10465">中原工学院</option>
    				<option value="10475">河南大学</option>
    			</select>
    		</td>
    		<td class="tdLabel">班级：</td>
    		<td> 
    			<select class="dfinput" name="classId">
    				<option value="10459">祥云28班</option>
    				<option value="10463">天耀2班</option>
    				<option value="10462">天耀6班</option>
    				<option value="10465">天耀10班</option>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<td class="tdLabel">生日：</td><td><input name="birthday" type="text" class="Wdate" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})"/></td>
    		<td class="tdLabel">学习日期：</td><td><input name="studyDate" type="text" class="Wdate" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})"/></td>
    	</tr>
    	<tr>
    		<td class="tdLabel">联系电话：</td><td><input name="telNum" type="text" class="dfinput"/></td>
    		<td class="tdLabel">邮箱：</td><td><input name="email" type="text" class="dfinput"/></td>
    	</tr>
    	<tr>
    		<td class="tdLabel">备注：</td><td colspan="3"><textarea name="memo" cols="50" rows="" class="textinput"></textarea></td>
    	</tr>
    	<tr>
    		<td colspan="4" align="center"><input type="submit" class="btn" value="确认保存"/></td>
    	</tr>
    </table>
    </form>
    </div>


</body>

</html>