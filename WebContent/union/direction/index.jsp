<%@ page language="java" import="java.util.*,hsx.com.entity.*" 
contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社联管理-华南师范大学社团管理系统</title>
<link href="${pageContext.request.contextPath }/union/direction/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath }/union/direction/jquery.js"></script>
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>首页</li>
    </ul>
    </div>
    
    <div class="mainindex">
    
    
   <div class="welinfo">
    <span><img src="${pageContext.request.contextPath }/union/direction/images/sun.png" alt="天气" /></span>
    <h3>欢迎使用华南师范大学社团管理系统</h3>
            
    </div>
    
    <div class="welinfo">
    <span><img src="${pageContext.request.contextPath }/union/direction/images/d05.png" /></span>
    <h3>华南师大校社联管理的学生社团共计121个，其中石牌校区42个，大学城校区53个，南海校区26个</h3>
    </div> 
    
    <div class="xline"></div>
    
    <ul class="iconlist">
    
    <li><img src="${pageContext.request.contextPath }/union/direction/images/ico01.png" /><p>管理设置</p></li>
    <li><img src="${pageContext.request.contextPath }/union/direction/images/ico02.png" /><p>发布公告</p></li>
    <li><img src="${pageContext.request.contextPath }/union/direction/images/ico03.png" /><p>数据统计</p></li>
    <li><img src="${pageContext.request.contextPath }/union/direction/images/ico04.png" /><p>审批申请</p></li>
    <li><img src="${pageContext.request.contextPath }/union/direction/images/ico05.png" /><p>目录管理</p></li>
    <li><img src="${pageContext.request.contextPath }/union/direction/images/ico06.png" /><p>查询信息</p></li> 
            
    </ul>
    
    <div class="ibox"><a class="ibtn"><img src="${pageContext.request.contextPath }/union/direction/images/iadd.png" />添加新的快捷功能</a></div>
    
    <div class="xline"></div>
    <div class="box"></div>
    
    <div class="welinfo">
    <span><img src="${pageContext.request.contextPath }/union/direction/images/dp.png" alt="提醒" /></span>
    <b>华南师范大学社团管理系统使用指南</b>
    </div>
    
    <ul class="infolist">
    <li><span>您可以查询社团信息</span></li>
    <li><span>您可以快速发布管理公告</span></li>
    <li><span>您可以审批社团的活动申请以及信息变更申请</span></li>
    </ul>
    
    <div class="xline"></div>
    
    <div class="uimakerinfo"><b>本系统主要实现构建社团网上信息库，方便查询和调取，减轻社团登记注册、社团信息变更等方面的工作负担，实现社团规范、高效监管。</b></div>
    
    <ul class="umlist">
    </ul>   
    </div>   
</body>

</html>
