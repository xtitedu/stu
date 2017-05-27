<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.xt.stu.user.UserService" %>
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
	UserService us = new UserService();
	if(us.checkLogin(userName, passwd)){
		response.sendRedirect("sys_index.jsp");
	}else{
		request.setAttribute("msg", "用户名或者密码为空！");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
%>

</body>
</html>