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
    $("#expenditure").submit(function(){
    	if($("#a").val()==""){	
    		alert("经费来源不能为空！");
    		return false;
    	}else if($("#b").val()==""){	
    		alert("经费支出不能为空！");
    		return false;
    	}else if($("#c").val()==""){	
    		alert("上年度经费结算不能为空！");
    		return false;
    	}else if($("#d").val()==""){	
    		alert("本年度经费预算不能为空！");
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
	<div>经费管理<span></span></div>
 </div>
 <br/>	
 
<div class="reg">
<form action="${pageContext.request.contextPath }/expenditure/exd.do" method="post" id="expenditure">
<input type="hidden" name="infoId" value="${currentUser.id }"/>
<input type="text" name="income" id="a" value="" placeholder="经费来源"><br/>
<input type="text" name="expend" id="b" value="" placeholder="经费支出"><br/>
<input type="text" name="lastbudget" id="c" value="" placeholder="上年度经费结算"><br/>
<input type="text" name="nextbudget" id="d" value="" placeholder="本年度经费预算"><br/>
<input type="submit" value="提交"/>	
</form>
</div>
</body>
</html>