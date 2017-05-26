<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>用户登录</title>
	<link rel="stylesheet" href="../static/css/base.css" />
	<link rel="stylesheet" href="../static/css/login.css" />
</head>
<script type="text/javascript">
	function checkLogin(){
		var userName = document.getElementsByName("userName")[0].value;
		var passwd = document.getElementsByName("passwd")[0].value;
		if(userName == ""){
			alert("用户名不能为空！");
			return false;
		}
		if(passwd = ""){
			alert("用户密码不能为空！");
			return false;
		}
		
		document.getElementById("loginForm").submit();
	}

</script>
<body>
<!-- 
樣式切換
<div class="superlogin"></div>
 -->
<div class="superlogin"></div>
<div class="loginBox">
	<div class="logo"><img src="../static/images/login_logo.png"/></div>
	<div class="loginMain">
		<div class="tabwrap">
		<form action="sys_index.jsp" id="loginForm" method="post">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr><td class="title">用户名：</td><td><input type="text" name="userName" class="form-control txt" /></td></tr>
			<tr><td class="title">密   码：</td><td><input type="password" name="passwd" class="form-control txt" /></td></tr>
			<tr><td class="title">验证码：</td><td><input type="text" class="form-control txt txt2" /><span class="yzm"><img src="../static/images/yzm.jpg"/></span></td></tr>
			<tr class="errortd"><td>&nbsp;</td><td><i class="ico-error"></i><span class="errorword">用户名或密码错误，请重新输入！</span></td></tr>		
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
