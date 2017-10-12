<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.xt.stu.sys.Dic" %>
<%@ page import="com.xt.stu.util.Convert" %>
<%@ page import="com.xt.stu.util.Constance" %>
<%@ page import="com.xt.stu.user.UserInfo" %>
<%@ page import="org.apache.commons.beanutils.BeanUtils" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.xt.stu.sys.DicService" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加字典信息</title>
</head>
<%
	Dic dic = new Dic();
	Object o = session.getAttribute(Constance.USER_LOGIN_INFO);
	if(o != null){
		dic.setUpdatePerson(((UserInfo)o).getId());
	}

	request.setCharacterEncoding("UTF-8");
	Enumeration<String> enums = request.getParameterNames();
	Convert.ConvertDate();
	 while(enums.hasMoreElements()){
		String attrName = enums.nextElement();
		String value = request.getParameter(attrName);
		//将value值 setter 到 stu对象 的 name 属性
		BeanUtils.setProperty(dic, attrName, value);
	 }
	 DicService ds = new DicService();
	 if(ds.addDic(dic)){
		 response.sendRedirect("list.jsp");
	 }else{
		 response.sendError(response.SC_INTERNAL_SERVER_ERROR, "字典信息添加失败。。。。");
	 }
%>
<body>

</body>
</html>