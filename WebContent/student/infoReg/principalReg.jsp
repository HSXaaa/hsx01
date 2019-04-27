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
    $("#principal").submit(function(){
    	if($("#a").val()==""){	
    		alert("姓名不能为空！");
    		return false;
    	}else if($("#b").val()==""){	
    		alert("学号不能为空！");
    		return false;
    	}else if($("#c").val()==""){	
    		alert("学院不能为空！");
    		return false;
    	}else if($("#d").val()==""){	
    		alert("年级不能为空！");
    		return false;
    	}else if($("#e").val()==""){	
    		alert("专业不能为空！");
    		return false;
    	}else if($("#f").val()==""){	
		    alert("班级不能为空！");
		    return false;
    	}else if($("#g").val()==""){	
    		alert("民族不能为空！");
    		return false;
    	}else if($("#h").val()==""){	
    		alert("籍贯不能为空！");
    		return false;
    	}else if($("#i").val()==""){	
    		alert("政治面貌不能为空！");
    		return false;
    	}else if($("#j").val()==""){	
    		alert("联系方式不能为空！");
    		return false;
    	}else if($("#k").val()==""){	
		    alert("学业成绩不能为空！");
		    return false;
    	}else if($("#l").val()==""){	
    		alert("主要工作经历不能为空！");
    		return false;
    	}else if($("#m").val()==""){	
		    alert("奖惩情况不能为空！");
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
<div>社团负责人<span></span></div>
</div>
<br/>	
 
<div class="register">
<form action="${pageContext.request.contextPath }/principal/prp.do" method="post" id="principal">
<input type="hidden" name="infoId" value="${currentUser.id }"/>
<input type="text" name="name" id="a" value="" placeholder="姓名"><br/>
<h2>性别:
  男<input type="radio" name="sex" value="男" checked="checked"/>
  女<input type="radio"  name="sex" value="女"/></h2>
<input type="text" name="number" id="b" value="" placeholder="学号"><br/>
<input type="text" name="college" id="c" value="" placeholder="学院"><br/>
<input type="text" name="grade" id="d" value="" placeholder="年级"><br/> 
<input type="text" name="major" id="e" value="" placeholder="专业"><br/> 
<input type="text" name="classes" id="f" value="" placeholder="班级"><br/>
<input type="text" name="nation" id="g" value="" placeholder="民族"><br/>
<input type="text" name="natives" id="h" value="" placeholder="籍贯"><br/>
<input type="text" name="politics" id="i" value="" placeholder="政治面貌"><br/> 
<input type="text" name="phone" id="j" value="" placeholder="联系方式"><br/> 
<input type="text" name="performance" id="k" value="" placeholder="学业成绩"><br/>
<input type="text" name="work" id="l" value="" placeholder="主要工作经历"><br/>  
<input type="text" name="rewandpunish" id="m" value="" placeholder="奖惩情况"><br/>  
<input type="submit" value="提交"/>
</form>
</div>

</body>
</html>