<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.xt.stu.util.Constance" %>
<%
	Object o = session.getAttribute(Constance.USER_LOGIN_INFO);
	if(o == null){
		response.sendRedirect("login.jsp");
	}

%>