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
    $("#teacher").submit(function(){
    	if($("#a").val()==""){	
    		alert("姓名不能为空！");
    		return false;
    	}else if($("#b").val()==""){	
    		alert("一卡通号不能为空！");
    		return false;
    	}else if($("#c").val()==""){	
    		alert("政治面貌不能为空！");
    		return false;
    	}else if($("#d").val()==""){	
    		alert("工作单位不能为空！");
    		return false;
    	}else if($("#e").val()==""){	
    		alert("职称/职务不能为空！");
    		return false;
    	}else if($("#f").val()==""){	
		    alert("联系方式不能为空！");
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
	<div>指导教师<span></span></div>
 </div>
 <br/>	
 
<div class="reg">
<form action="${pageContext.request.contextPath }/teacher/zdls.do" method="post" id="teacher">
<input type="hidden" name="infoId" value="${currentUser.id }"/>
<input type="text" name="name" id="a" value="" placeholder="姓名">
<h2>性别:
  男<input type="radio" name="sex" value="男" checked="checked"/>
  女<input type="radio" name="sex" value="女"/></h2>
<input type="text" name="number" id="b" value="" placeholder="一卡通号"><br/> 	
<input type="text" name="politics" id="c" value="" placeholder="政治面貌"><br/>	
<input type="text" name="workplace" id="d" value="" placeholder="工作单位"><br/>	
<input type="text" name="job" id="e" value="" placeholder="职称/职务"><br/>
<input type="text" name="phone" id="f" value="" placeholder="联系方式"><br/> 
<input type="submit" id="g" value="提交"/>	
</form>
</div>
</body>
</html>