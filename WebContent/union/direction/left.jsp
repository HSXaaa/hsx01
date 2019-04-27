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
<link href="${pageContext.request.contextPath }/union/direction/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath }/union/direction/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson .header").click(function(){
		var $parent = $(this).parent();
		$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();
		
		$parent.addClass("active");
		if(!!$(this).next('.sub-menus').size()){
			if($parent.hasClass("open")){
				$parent.removeClass("open").find('.sub-menus').hide();
			}else{
				$parent.addClass("open").find('.sub-menus').show();	
			}
			
			
		}
	});
	
	// 三级菜单点击
	$('.sub-menus li').click(function(e) {
        $(".sub-menus li.active").removeClass("active")
		$(this).addClass("active");
    });
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('.menuson').slideUp();
		if($ul.is(':visible')){
			$(this).next('.menuson').slideUp();
		}else{
			$(this).next('.menuson').slideDown();
		}
	});
})	
</script>
</head>

<body style="background:#fff3e1;">
	<div class="lefttop">
	<a href="${pageContext.request.contextPath }/union/direction/main.jsp" target="_parent"><span></span></a>社团管理
	</div>  
    <dl class="leftmenu">       
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath }/union/direction/images/leftico01.png" /></span>社团管理
    </div>
        <ul class="menuson">
        <li><cite></cite><a href="${pageContext.request.contextPath }/unionshow/adminshow2.do" target="rightFrame">社团信息</a><i></i></li>    
        </ul>    
    </dd>
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath }/union/direction/images/leftico01.png" /></span>会员管理
    </div>
    	<ul class="menuson">    
        <li><cite></cite>会员信息<i></i></li>
        <li><cite></cite>会员数量<i></i></li>
        <li><cite></cite>会员属性<i></i></li>
        </ul>    
    </dd>
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath }/union/direction/images/leftico01.png" /></span>活动审批
    </div>
    	<ul class="menuson">    
        <li><cite></cite>审批申请<i></i></li>
        <li><cite></cite>课室申请<i></i></li>
        <li><cite></cite>户外场地申请<i></i></li>
        </ul>    
    </dd>

    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath }/union/direction/images/leftico01.png" /></span>信息变更
    </div>
    	<ul class="menuson">    
        <li><cite></cite>信息变更审批<i></i></li>
        </ul>    
    </dd>
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath }/union/direction/images/leftico01.png" /></span>公告管理
    </div>
    	<ul class="menuson">    
        <li><cite></cite>发布公告<i></i></li>
        </ul>    
    </dd>
    
    </dl>
    
</body>
</html>
