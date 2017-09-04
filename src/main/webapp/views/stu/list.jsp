<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.xt.stu.stuinfo.StuInfo" %>
<%@ page import="com.xt.stu.stuinfo.StuService" %>
<%
	String ctxPath = request.getContextPath();
	StuService stuInfo = new StuService();
	List<StuInfo> stuList = stuInfo.getStuInfoByAttrs(null);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=ctxPath %>/static/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=ctxPath %>/static/js/jquery-1.6.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  //$(".tip").fadeIn(200);
  	window.location.href = "add.jsp";
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});

function test(){
	alert("hello");
}
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">学生信息管理</a></li>
    <li><a href="#">学生管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><a><span><img src="<%=ctxPath %>/static/images/t01.png" /></span>添加</a></li>
        <li><span><img src="<%=ctxPath %>/static/images/t03.png" /></span>删除</li>
        </ul>
    
    </div>
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>学号<i class="sort"><img src="<%=ctxPath %>/static/images/px.gif" /></i></th>
        <th>姓名</th>
        <th>班级</th>
        <th>学校</th>
        <th>联系电话</th>
        <th>Email</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <%
			for(StuInfo stu : stuList){
		%>
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td><%=stu.getStuNo() %></td>
        <td><%=stu.getStuName() %></td>
        <td><%=stu.getClassId() %></td>
        <td><%=stu.getUniversity() %></td>
        <td><%=stu.getTelNum() %></td>
        <td><%=stu.getEmail() %></td>
        <td><a href="#" class="tablelink">查看</a><a href="#" class="tablelink"> 修改</a><a href="#" class="tablelink"> 删除</a></td>
        </tr> 
        <%
			}
		%>
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="<%=ctxPath %>/static/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" onclick="test();"/>&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</html>