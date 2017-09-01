<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.xt.stu.user.UserService" %>
<%@ page import="com.xt.stu.util.Constance" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登陆</title>
</head>

<body>
<%
	String userName = request.getParameter("userName");
	String passwd = request.getParameter("passwd");
	String verCode = request.getParameter("verCode");
	
	if(verCode.equalsIgnoreCase(session.getAttribute(Constance.VER_CODE) + "")){
		UserService us = new UserService();
		if(us.checkLogin(userName, passwd)){
			session.setAttribute(Constance.USER_LOGIN_INFO, us.getUserInfoByUserName(userName));
			response.sendRedirect("sys_index.jsp");
		}else{
			request.setAttribute("msg", "用户名或者密码错误,请重新输入！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}else{
		request.setAttribute("msg", "验证码错误,请重新输入！");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
%>

</body>
</html>