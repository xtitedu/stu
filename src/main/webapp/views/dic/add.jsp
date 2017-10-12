<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.xt.stu.util.DateUtil" %>
<%@ page import="java.util.Date" %>
<%
	String ctxPath = request.getContextPath();
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
    <li><a href="#">添加字典信息</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    <form action="doAdd.jsp" method="post" onsubmit="submitData();">
    <table class="tableForm">
    	<tr>
    		<td class="tdLabel">字典类型：</td><td><input name="dicType" type="text" class="dfinput" value=""/></td>
    		<td class="tdLabel"></td><td></td>
    	</tr>
    	<tr>
    		<td class="tdLabel">数据名称：</td><td><input name="dataName" type="text" class="dfinput" /></td>
    		<td class="tdLabel">数据代码：</td><td><input name="dataCode" type="text" class="dfinput" /></td>
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