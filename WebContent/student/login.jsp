<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社团登录-华南师范大学社团管理系统</title>
<link rel="icon" href="../img/timg.jpg" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/body.css"/>

<script language="javascript"> 

  var error ='<%=request.getParameter("error")%>';
  if(error=='error1'){
   alert("登录失败！您输入的账号或者密码错误，请输入正确的账号密码");
  }
  
  var regsuccess='<%=request.getParameter("regsuccess")%>' ;
  if(regsuccess=='regsuccessful'){
   alert("注册成功！进入社团登录页面");
  }
  
</script>

</head>
<body>
<div class="container">
	<section id="content">
		<form action="${pageContext.request.contextPath }/user/login.do" method="post">
			<h1>社团登录</h1>
			<div>
				<input type="text" name="userName" value="${user.userName }" placeholder="社团名称" required="" id="username" />
			</div>
			<div>
				<input type="password" name="password" value="${user.password }" placeholder="登录密码" required="" id="password" />
			</div>
			<div class="">
				<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>
			</div>
			<div>

				<!-- <input type="submit" value="Log in" /> -->
				<input type="submit" value="登录" class="btn btn-primary" id="js-btn-login"/>
				<a href="register/register.jsp">注册</a>
				<a href="#">忘记密码?</a>
			</div>
		</form><!-- form -->

	</section><!-- content -->
</div>
<!-- container -->


<br><br><br><br>
<div style="text-align:center;">
	&copy; Copyright 2018-2019 hsxdy123. All Rights Reserved
</div>
</body>
</html>