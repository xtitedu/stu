<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>用户登录</title>
	<link rel="stylesheet" href="<%=ctxPath %>/static/css/base.css" />
	<link rel="stylesheet" href="<%=ctxPath %>/static/css/login.css" />
</head>
<script type="text/javascript">
	function checkLogin(){
		var userName = document.getElementsByName("userName")[0].value;
		var passwd = document.getElementsByName("passwd")[0].value;
		var verCode = document.getElementsByName("verCode")[0].value;
		if(userName == ""){
			alert("用户名不能为空！");
			return false;
		}
		if(passwd == ""){
			alert("用户密码不能为空！");
			return false;
		}
		if(verCode == ""){
			alert("验证码不能为空！");
			return false;
		}
		
		document.getElementById("loginForm").submit();
	}
	
	function changeImg(){
        var verCodeImg = document.getElementById("verCodeImg"); 
        verCodeImg.src = "<%=request.getContextPath()%>/authImage?date=" + new Date();;
    } 
</script>
<body>
<%
	Object msgo = request.getAttribute("msg");
	String msg = null;
	if(msgo != null){
		msg = msgo + "";
	}

%>

<!-- 
樣式切換
<div class="superlogin"></div>
 -->
<div class="superlogin"></div>
<div class="loginBox">
	<div class="logo"><img src="<%=ctxPath %>/static/images/login_logo.png"/></div>
	<div class="loginMain">
		<div class="tabwrap">
		<form action="checkLogin.jsp" id="loginForm" method="post">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr><td class="title">用户名：</td><td><input type="text" name="userName" class="form-control txt" /></td></tr>
			<tr><td class="title">密   码：</td><td><input type="password" name="passwd" class="form-control txt" /></td></tr>
			<tr><td class="title">验证码：</td><td><input type="text" name="verCode" class="form-control txt txt2" /><span class="yzm"><a href="#" onclick="changeImg()"><img src="<%=request.getContextPath()%>/authImage" id="verCodeImg"/></a></span></td></tr>
			<tr class="errortd"><td>&nbsp;</td><td><%if(msg != null){ %> <i class="ico-error"></i><span class="errorword"><%=msg %> </span><% } %></td></tr>		
			<tr><td>&nbsp;</td><td>
			<input type="button" class="loginbtn" value="登录" onclick="checkLogin();"/>
			<input type="reset" class="resetbtn" value="重置"/></td></tr>		
		</table>
		</form>
		</div>
	</div>
</div>
<div class="footer">Copyright © 2016-2017 郑州兴唐教育  All Rights Reserved.</div>
</body>
</html>
