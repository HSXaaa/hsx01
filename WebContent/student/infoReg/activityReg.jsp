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
    $("#activity").submit(function(){
    	if($("#a").val()==""){	
    		alert("活动名称不能为空！");
    		return false;
    	}else if($("#b").val()==""){	
    		alert("活动时间不能为空！");
    		return false;
    	}else if($("#c").val()==""){	
    		alert("活动地点不能为空！");
    		return false;
    	}else if($("#d").val()==""){	
    		alert("活动简介不能为空！");
    		return false;
    	}else if($("#e").val()==""){	
    		alert("近五年开展活动一览不能为空！");
    		return false;
    	}else if($("#f").val()==""){	
		    alert("上一年度活动总结不能为空！");
		    return false;
    	}else if($("#g").val()==""){	
    		alert("下一年度活动计划不能为空！");
    		return false;
    	}else if($("#h").val()==""){	
    		alert("社团新媒体运营平台不能为空！");
    		return false;
    	}else if($("#i").val()==""){	
    		alert("社团刊物不能为空！");
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
	<div>活动管理<span></span></div>
 </div>
 <br/>	

<div class="reg">
<form action="${pageContext.request.contextPath }/activity/aty.do" method="post" id="activity">
<input type="hidden" name="infoId" value="${currentUser.id }"/>
<input type="text" name="name" id="a" value="" placeholder="活动名称"><br/>
<input type="text" name="time" id="b" value="" placeholder="活动时间"><br/>
<input type="text" name="place" id="c"value="" placeholder="活动地点"><br/>
<input type="text" name="brief" id="d" value="" placeholder="活动简介"><br/> 	
<input type="text" name="fiveyear" id="e" value="" placeholder="近五年开展活动一览"><br/>	
<input type="text" name="lastyear" id="f" value="" placeholder="上一年度活动总结"><br/>	
<input type="text" name="nextyear" id="g" value="" placeholder="下一年度活动计划"><br/>
<input type="text" name="operation" id="h" value="" placeholder="社团新媒体运营平台"><br/>	
<input type="text" name="periodical" id="i" value="" placeholder="社团刊物"><br/>
<input type="submit" value="提交"/>	
</form>
</div>
</body>
</html>