<%@ page language="java" import="java.util.*" import="java.util.*,hsx.com.entity.User" 
contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社团注册-华南师范大学社团管理系统</title>
<link rel="icon" href="${pageContext.request.contextPath }/img/timg.jpg" type="image/x-icon"/>
<link href="${pageContext.request.contextPath }/student/register/css/style.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/union/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/union/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/union/js/Validform_v5.3.2_min.js"></script>
<script language="javascript">
   $(function(){   	
    $("#member").submit(function(){
    	if($("#a").val()==""){	
    		alert("会员姓名不能为空！");
    		return false;
    	}else if($("#b").val()==""){	
    		alert("学工信息不能为空！");
    		return false;
    	}else if($("#c").val()==""){	
    		alert("费用缴纳情况不能为空！");
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
	<div>会员管理<span></span></div>
 </div>
 <br/>	
 
<div class="reg">
<form action="${pageContext.request.contextPath }/member/mbr.do" method="post" id="member">
<input type="hidden" name="infoId" value="${currentUser.id }"/>
<input type="text" name="name" id="a" value="" placeholder="会员姓名"><br/>
<input type="text" name="number" id="b" value="" placeholder="学工信息"><br/>
<input type="text" name="pay" id="c" value="" placeholder="费用缴纳情况"><br/>
<input type="submit" value="提交"/>	
</form>
</div>
</body>
</html>