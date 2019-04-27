<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社联登录-华南师范大学社团管理系统</title>
<link rel="icon" href="${pageContext.request.contextPath }/img/timg.jpg" type="image/x-icon"/>
<link href="css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
<link href="css/demo.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>

<script language="javascript"> 
  var error ='<%=request.getParameter("error")%>';
  if(error=='error2'){
   alert("登录失败！您输入的账号或者密码错误，请输入正确的账号密码");
  }
</script>

<script language="javascript">
    $(function(){
    	
    $(".i-text").focus(function(){
    $(this).addClass('h-light');
            });

    $(".i-text").focusout(function(){
    $(this).removeClass('h-light');
            });

    $("#union").submit(function(){
                
    if($("#username").val()==""){		
        alert("账号不能为空！");
        return false;
    }else if($("#password").val()==""){	
        alert("密码不能为空!");
        return false;
    }else{
        return true;
        	}
        })
         
    $(".registerform").Validform({
        tiptype:function(msg,o,cssctl){
        var objtip=$(".error-box");
        cssctl(objtip,o.type);
        objtip.text(msg);
             },
        ajaxPost:true
            });
        });
</script>

</head>
<body>
<div class="banner">
	<div class="login-aside">
		<div id="o-box-up"></div>
		<div id="o-box-down"  style="table-layout:fixed;">
			<div class="error-box"></div>

		<form action="${pageContext.request.contextPath }/union/unionlogin.do" method="post" id="union">
				<div class="fm-item">
					<label for="logonId" class="form-label">社联登录：</label>
					<input type="text" name="userName" value="" placeholder="登录名称" maxlength="100" id="username" class="i-text" >
					<div class="ui-form-explain"></div>
				</div>

				<div class="fm-item">
					<label for="logonId" class="form-label">登陆密码：</label>
					<input type="password" name="password" value="" placeholder="登陆密码" maxlength="100" id="password" class="i-text" >
					<div class="ui-form-explain"></div>
				</div>
				<div class="fm-item">
					<label for="logonId" class="form-label"></label>
					<input type="submit" value="" tabindex="4" id="send-btn" class="btn-login">
					<div class="ui-form-explain"></div>
				</div>
			</form>
		</div>
	</div>

	<div class="bd">
		<ul>
			<li style="background:url(themes/1.png) #CCE1F3 center 0 no-repeat;"></li>
			<li style="background:url(themes/2.png) #BCE0FF center 0 no-repeat;"></li>
		</ul>
	</div>

	<div class="hd"><ul></ul></div>
</div>
<script type="text/javascript">jQuery(".banner").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"fold",  autoPlay:true, autoPage:true, trigger:"click" });</script>


<div class="banner-shadow"></div>

<div class="footer">
	&copy; Copyright 2018-2019 hsxdy123. All Rights Reserved
</div>

</body>
</html>