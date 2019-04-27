<%@ page language="java" import="java.util.*,hsx.com.entity.*" 
contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社联管理-华南师范大学社团管理系统</title>
<link rel="icon" href="${pageContext.request.contextPath }/img/timg.jpg" type="image/x-icon"/>
<link href="${pageContext.request.contextPath }/student/css/readstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <div>位置：<a href="${pageContext.request.contextPath }/union/direction/main.jsp" target="_parent">首页</a> / 社团管理  / 社团信息 </div>
    <h1 align="center">社团信息</h1>
    <c:forEach items="${user}" var="userlist" >
	<table class="tablelist">
	  <thead>
    	<tr>
        <th>社团编号</th>
        <th>社团名称</th>
        </tr>
      </thead>
      
	  <tbody>
       <tr>
       <td>${userlist.id}</td>
       <td><a href="${pageContext.request.contextPath }/unionshow/read.do?infoId=${userlist.id}&userName=${userlist.userName}" target="_blank">${userlist.userName}</a></td>
	   </tr>
	  </tbody>
	</table>
</c:forEach>
</body>
</html>