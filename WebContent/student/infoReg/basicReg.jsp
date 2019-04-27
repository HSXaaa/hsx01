<%@ page language="java" import="java.util.*" import="java.util.*,hsx.com.entity.User" 
contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社团概况-华南师范大学社团管理系统</title>
<link rel="icon" href="${pageContext.request.contextPath }/img/timg.jpg" type="image/x-icon"/>
<link href="${pageContext.request.contextPath }/student/register/css/style.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/union/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/union/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/union/js/Validform_v5.3.2_min.js"></script>
<script language="javascript">
   $(function(){   	
    $("#basic").submit(function(){
    	if($("#a").val()==""){	
    		alert("社团成立时间不能为空！");
    		return false;
    	}else if($("#b").val()==""){	
    		alert("社团宗旨不能为空！");
    		return false;
    	}else if($("#c").val()==""){	
    		alert("社团章程不能为空！");
    		return false;
    	}else if($("#d").val()==""){	
    		alert("社团组织机构设置不能为空！");
    		return false;
    	}else if($("#e").val()==""){	
    		alert("主要活动简介不能为空！");
    		return false;
    	}else if($("#f").val()==""){	
		    alert("近五年奖惩情况不能为空！");
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
	<div>社团概况<span></span></div>
 </div>
 <br/>	

<div class="reg">
<form action="${pageContext.request.contextPath }/basic/info.do" method="post" id="basic">
<input type="hidden" name="infoId" value="${currentUser.id }"/>
<select name="sort" style="width: 260px;height: 40px">
      <option value="思想政治类">思想政治类</option>
      <option value="学术科技类">学术科技类</option>
      <option value="创新创业类">创新创业类</option>
      <option value="文化体育类">文化体育类</option>
      <option value="志愿公益类">志愿公益类</option>
      <option value="自律互助类">自律互助类</option>
      <option value="其他类">其他类</option>
</select>
  <br/>
<input type="text" name="setuptime" id="a" placeholder="社团成立时间" value=""><br/>
<input type="text" name="purpose" id="b" placeholder="社团宗旨" value=""><br/>
<input type="text" name="constitutior" id="c" placeholder="社团章程" value=""><br/> 
<input type="text" name="organization" placeholder="社团组织机构设置" id="d" value=""><br/> 
<input type="text" name="activity" id="e" placeholder="主要活动简介" value=""><br/>
<input type="text" name="rewandpunish" placeholder="近五年奖惩情况" id="f" value=""><br/>
<input type="submit" value="提交"/>
</form>
 </div>
</body>
</html>