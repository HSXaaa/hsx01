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
<script language="javascript"> 
  var success ='<%=request.getParameter("${user}")%>';
  if(success!=null){
   alert("登录成功");
  }
</script>
</head>      
<frameset rows="88,*,31" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="${pageContext.request.contextPath }/union/direction/top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="187,*" frameborder="no" border="0" framespacing="0">
    <frame src="${pageContext.request.contextPath }/union/direction/left.jsp"name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="${pageContext.request.contextPath }/union/direction/index.jsp" name="rightFrame" id="rightFrame" title="rightFrame" />
  </frameset>
  <frame src="${pageContext.request.contextPath }/union/direction/footer.jsp" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" title="bottomFrame" />
</frameset>
<noframes>
<body>
</body>
</noframes>
</html>
