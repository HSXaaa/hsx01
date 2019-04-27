<%@ page language="java" import="java.util.*,hsx.com.entity.*" 
contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社团信息-华南师范大学社团管理系统</title>
<link rel="icon" href="${pageContext.request.contextPath }/img/timg.jpg" type="image/x-icon"/>
<link href="${pageContext.request.contextPath }/student/css/readstyle.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath }/student/infoRead/main.d8e0d294.css" rel="stylesheet"/>
<script language="javascript"> 
  var success ='<%=request.getParameter("infoId")%>';
  if(success!=null){
   alert("<%=((User)session.getAttribute("currentUser")).getUserName()%> 欢迎使用华南师范大学社团管理系统 ");
  }
</script>
</head>
<body>
<div class="background-color-layer" style="background-image: url('${pageContext.request.contextPath }/student/infoRead/images/p2.png')"></div>
<main class="content-wrapper">

<header class="white-text-container section-container">
  <div class="text-center">
     <h1><%=((User)session.getAttribute("currentUser")).getUserName()%></h1>
     <h1>欢迎使用华南师范大学社团管理系统</h1>
  </div>
</header>

<div class="container">
 
  <div class="card">
   <div class="card-block">
    <h2 align="center">社团概况</h2><p align="center"><a href="${pageContext.request.contextPath }/student/infoReg/basicReg.jsp">点击进入完善信息</a></p>
	<c:forEach items="${basic}" var="basiclist" >
	<table class="tablelist">
	  <thead>
    	<tr>
        <th>社团分类</th>
        <th>社团成立时间</th>
        <th>社团宗旨</th>
        <th>社团章程</th>
        <th>社团组织机构设置</th>
        <th>主要活动简介</th>
        <th>近五年奖惩情况</th>
        </tr>
      </thead>
      
	  <tbody>
		<tr>
		<td>${basiclist.sort}</td>
		<td>${basiclist.setuptime}</td>
		<td>${basiclist.purpose}</td>
		<td>${basiclist.constitutior}</td>
		<td>${basiclist.organization}</td>
		<td>${basiclist.activity}</td>
		<td>${basiclist.rewandpunish}</td>
		</tr>
	  </tbody>
	</table>
	</c:forEach>
   </div>
  </div>

  <div class="card">
   <div class="card-block">
    <h2>SCNU Associations Management System</h2>
     <div class="row">
      <div class="col-md-4">
       <p><img src="${pageContext.request.contextPath }/student/infoRead/images/p1.png" class="img-responsive" alt=""></p>
      </div>
      <div class="col-md-8">
      <form action="${pageContext.request.contextPath }/upfile/upload.do" method="post" enctype="multipart/form-data">
	  <input type="hidden" name="infoId" value="${currentUser.id }"/>
	  <table>
		<tr><td>社团logo</td><td><input type="file" name="file1"/></td></tr>
		<tr><td colspan="2"><input type="submit" value="上传图片"/></td></tr>
	  </table>
      </form>
      <br/><br/>	
      <form action="${pageContext.request.contextPath }/upfile/upload.do" method="post" enctype="multipart/form-data">
	  <input type="hidden" name="infoId" value="${currentUser.id }"/>
	   <table>
		<tr><td>社团印章</td><td><input type="file" name="file1"/></td></tr>
		<tr><td colspan="2"><input type="submit" value="上传图片"/></td></tr>
	   </table>
       </form>
     </div>
    </div>
   </div>
  </div> 
        
        
  <div class="card">
   <div class="card-block">    
    <h2 align="center">社团负责人</h2><p align="center"><a href="${pageContext.request.contextPath }/student/infoReg/principalReg.jsp">点击进入完善信息</a></p>
	<c:forEach items="${principal}" var="principallist" >
	<table class="tablelist">
	  <thead>
    	<tr>
        <th>姓名</th>
        <th>性别</th>
        <th>学号</th>
        <th>学院</th>
        <th>年级</th>
        <th>专业</th>
        <th>班级</th>
        <th>民族</th>
        <th>籍贯</th>
        <th>政治面貌</th>
        <th>联系方式</th>
        <th>学业成绩</th>
        <th>主要工作经历</th>
        <th>奖惩情况</th>
        </tr>
      </thead>
      
	  <tbody>
		<tr>
		<td>${principallist.name}</td>
		<td>${principallist.sex}</td>
		<td>${principallist.number}</td>
		<td>${principallist.college}</td>
		<td>${principallist.grade}</td>
		<td>${principallist.major}</td>
		<td>${principallist.classes}</td>
		<td>${principallist.nation}</td>
		<td>${principallist.natives}</td>
		<td>${principallist.politics}</td>
		<td>${principallist.phone}</td>
		<td>${principallist.performance}</td>
		<td>${principallist.work}</td>
		<td>${principallist.rewandpunish}</td>
		</tr>
	  </tbody>
	</table>
   </c:forEach>          
  </div>
 </div>  
       
 <div class="card">
  <div class="card-block">    
   <h2 align="center">指导教师</h2><p align="center"><a href="${pageContext.request.contextPath }/student/infoReg/teacherReg.jsp">点击进入完善信息</a></p>
    <c:forEach items="${teacher}" var="teacherlist" >
	 <table class="tablelist">
	  <thead>
    	<tr>
        <th>姓名</th>
        <th>性别</th>
        <th>一卡通号</th>
        <th>政治面貌</th>
        <th>工作单位</th>
        <th>职称/职务</th>
        <th>联系方式</th>
        </tr>
      </thead>
      
      <tbody>
        <tr>	
		<td>${teacherlist.name}</td>
		<td>${teacherlist.sex}</td>
		<td>${teacherlist.number}</td>
		<td>${teacherlist.politics}</td>
		<td>${teacherlist.workplace}</td>
		<td>${teacherlist.job}</td>
		<td>${teacherlist.phone}</td>
		</tr>
	  </tbody>
	</table>
	</c:forEach>               
   </div>
  </div>  
    
  <div class="card">
   <div class="card-block">    
    <h2 align="center">活动管理</h2><p align="center"><a href="${pageContext.request.contextPath }/student/infoReg/activityReg.jsp">点击进入完善信息</a></p>
	 <c:forEach items="${activity}" var="activitylist" >
	  <table class="tablelist">
	  <thead>
    	<tr>
        <th>活动名称</th>
        <th>活动时间</th>
        <th>活动地点</th>
        <th>活动简介</th>
        <th>近五年开展活动一览</th>
        <th>上一年度活动总结</th>
        <th>下一年度活动计划</th>
        <th>社团新媒体运营平台</th>
        <th>社团刊物</th>
        </tr>
      </thead>
      
	  <tbody>
		<tr>
		<td>${activitylist.name}</td>
		<td>${activitylist.time}</td>
		<td>${activitylist.place}</td>
		<td>${activitylist.brief}</td>
		<td>${activitylist.fiveyear}</td>
		<td>${activitylist.lastyear}</td>
		<td>${activitylist.nextyear}</td>
		<td>${activitylist.operation}</td>
		<td>${activitylist.periodical}</td>
		</tr>
	  </tbody>
	</table>
   </c:forEach>      
  </div>
 </div> 
    
 <div class="card">
  <div class="card-block">    
   <h2 align="center">会员管理</h2><p align="center"><a href="${pageContext.request.contextPath }/student/infoReg/memberReg.jsp">点击进入完善信息</a></p>
	<c:forEach items="${member}" var="memberlist" >
	<table class="tablelist">
	  <thead>
    	<tr>
        <th>会员姓名</th>
        <th>学工信息</th>
        <th>费用缴纳情况</th>
        </tr>
      </thead>
      
	  <tbody>
		<tr>
		<td>${memberlist.name}</td>
		<td>${memberlist.number}</td>
		<td>${memberlist.pay}</td>
		</tr>
	  </tbody>
	</table>
   </c:forEach>            
  </div>
 </div>  
 
 <div class="card">
   <div class="card-block">    
    <h2 align="center">经费管理</h2><p align="center"><a href="${pageContext.request.contextPath }/student/infoReg/expenditureReg.jsp">点击进入完善信息</a></p>
	<c:forEach items="${expenditure}" var="expenditurelist" >
	<table class="tablelist">
	  <thead>
    	<tr>
        <th>经费来源</th>
        <th>经费支出</th>
        <th>上年度经费结算</th>
        <th>本年度经费预算</th>
        </tr>
      </thead>
      
	  <tbody>
		<tr>
		<td>${expenditurelist.income}</td>
		<td>${expenditurelist.expend}</td>
		<td>${expenditurelist.lastbudget}</td>
		<td>${expenditurelist.nextbudget}</td>
		</tr>
	  </tbody>
	</table>
   </c:forEach>      
  </div>
 </div>     
               
</div>
</main>
<footer class="footer-container white-text-container text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <p><small>&copy; Copyright 2018-2019 hsxdy123. All Rights Reserved</small></p>
      </div>
    </div>
  </div>
</footer>
		
<script>
  document.addEventListener("DOMContentLoaded", function (event) {
     scrollRevelation('.card');
  });
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/student/infoReg/main.bc58148c.js"></script></body>

</body>
</html>