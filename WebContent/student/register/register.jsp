<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社团注册-华南师范大学社团管理系统</title> 
<link rel="icon" href="img/timg.jpg" type="image/x-icon"/>
<link href="${pageContext.request.contextPath }/student/register/css/style.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/union/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/union/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/union/js/Validform_v5.3.2_min.js"></script>

<script language="javascript">
   $(function(){   	
    $("#reg").submit(function(){
    	if($("#name").val()==""){	
    		alert("社团名称不能为空！");
    		return false;
    	}else if($("#pwd").val()==""){	
    		alert("登录密码不能为空！");
    		return false;
    	}else if($("#cfpwd").val()==""){	
    		alert("确认密码不能为空！");
    		return false;
    	}else if($("#pwd").val()!=$("#cfpwd").val()){
    		alert("登录密码和确认密码不一致！");
    		return false;
    	}else{
    		return true;
    	}
    })
  })
</script>
</head>
<body>
 <div class="body"></div>
	<div class="grad"></div>
	<div class="header">
	<div>Register<span></span></div>
 </div>
 <br/>	
 <div class="reg">
  <form action="${pageContext.request.contextPath }/user/register.do" method="post" id="reg">
	<input type="text" name="userName" value="" placeholder="社团名称" id="name"/><br/>
	<input type="password" name="password" value="" placeholder="登录密码" id="pwd"><br/>
	<input type="password" name="" value="" placeholder="确认密码" id="cfpwd"><br/>
	<input type="submit" value="注册"/>
  </form>
 </div>
</body>
</html>