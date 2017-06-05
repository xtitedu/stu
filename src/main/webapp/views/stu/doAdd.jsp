<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.xt.stu.util.Convert" %>
<%@ page import="org.apache.commons.beanutils.BeanUtils" %>
<%@ page import="com.xt.stu.stuinfo.StuInfo" %>
<%@ page import="com.xt.stu.stuinfo.StuService" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 

 -->
 <%
 request.setCharacterEncoding("UTF-8");
 
 //String stuNo = request.getParameter("stuNo");
 
 Enumeration<String> enums = request.getParameterNames();
 
 
 StuInfo stu = new StuInfo();
 System.out.println("------------------------->" + stu);
 
 Convert.ConvertDate();
 while(enums.hasMoreElements()){
	String attrName = enums.nextElement();
	String value = request.getParameter(attrName);
	//将value值 setter 到 stu对象 的 name 属性
	BeanUtils.setProperty(stu, attrName, value);
	
 }
 System.out.println("------------------------->" + stu);
 
 StuService stuService = new StuService();
 if(stuService.insertStuInfo(stu)){
	 response.sendRedirect("list.jsp");
 }else{
	 response.sendError(response.SC_INTERNAL_SERVER_ERROR, "学生信息添加失败！！");
 }
 %>
</body>
</html>