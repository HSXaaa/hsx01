<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>华南师范大学社团管理系统</title>
<link rel="icon" href="img/timg.jpg" type="image/x-icon"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="css/style.css" rel="stylesheet">
</head>
<body id="body">

<header id="header">
    <div class="container">
        <h1 align="center">华南师范大学社团管理系统</h1>
    </div>
</header>
<section id="intro" class="wow fadeIn">

    <div class="intro-content">
        <h2>Welcome To Use <span>SCNU</span><br>Associations Management System</h2>
        <div>
            <a href="student/login.jsp" target="_blank" class="btn-get-started scrollto">社团登录</a>
            <a href="union/unionlogin.jsp" target="_blank" class="btn-projects scrollto">社联登录</a>
        </div>
    </div>

    <div id="intro-carousel" class="owl-carousel" >
        <div class="item" style="background-image: url('img/intro-carousel/1.png');"></div>
        <div class="item" style="background-image: url('img/intro-carousel/2.png');"></div>
        <div class="item" style="background-image: url('img/intro-carousel/3.png');"></div>
        <div class="item" style="background-image: url('img/intro-carousel/4.png');"></div>
        <div class="item" style="background-image: url('img/intro-carousel/5.png');"></div>
    </div>

</section><!-- #intro -->

<br/><br/>

<main id="main">

    <!--==========================
      About Section
    ============================-->
    <section id="about" class="wow fadeInUp">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 about-img">
                    <img src="img/p2.png" alt="">
                </div>

                <div class="col-lg-6 content">
                    <h2>为方便开展社团活动，建立华南师范大学社团管理系统是很有必要的</h2>
                    <h3>华南师大校社联管理的学生社团共计121个，其中石牌校区42个，大学城校区53个，南海校区26个</h3>

                    <ul>
                        <li><i class="ion-android-checkmark-circle"></i> 分为思想政治类、学术科技类</li>
                        <li><i class="ion-android-checkmark-circle"></i> 创新创业类、文化体育类</li>
                        <li><i class="ion-android-checkmark-circle"></i> 志愿公益类、自律互助类以及其他类</li>
                    </ul>

                </div>
            </div>

        </div>
    </section><!-- #about -->

    <!--==========================
      Services Section
    ============================-->
    <section id="services">
        <div class="container">
            <div class="section-header">
                <h2>Services</h2>
                <p>本系统主要实现构建社团网上信息库，方便查询和调取，减轻社团登记注册、社团信息变更等方面的工作负担，实现社团规范、高效监管。</p>
            </div>

            <div class="row">

                <div class="col-lg-6">
                    <div class="box wow fadeInLeft">
                        <div class="icon"><i class="fa fa-bar-chart"></i></div>
                        <p class="description">社团登记注册时，社团登陆系统，录入社团信息后，社团打印信息确认表交指导老师签字、业务指导单位盖章后，将表格交校社联核对无误，校团委在系统确认后，完成登记注册。</p>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="box wow fadeInRight">
                        <div class="icon"><i class="fa fa-picture-o"></i></div>
                        <p class="description">社团申请变更信息时，社团登陆系统，填写变更事项，社团打印信息变更申请表交指导老师签字、业务指导单位盖章后，将表格交校社联核对无误，校团委在系统确认后，完成信息变更。</p>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="box wow fadeInLeft" data-wow-delay="0.2s">
                        <div class="icon"><i class="fa fa-shopping-bag"></i></div>
                        <p class="description">校社联和校团委登进账号，点击或搜索社团，即可查找信息，勾选所需项，可以实现自动导出所需信息的表格，可以有层级审批设置（初审和领导批准）。</p>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="box wow fadeInRight" data-wow-delay="0.2s">
                        <div class="icon"><i class="fa fa-map"></i></div>
                        <p class="description">校社联打造了社团文化节、社团活动月、社团风采展等一系列特色品牌活动，使社团文化成为华师校园文化的重要组成部分。</p>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- #services -->

</main>

<!--==========================
  Footer
============================-->
<footer id="footer">
    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong>2018-2019 hsxdy123</strong>. All Rights Reserved
        </div>
    </div>
</footer><!-- #footer -->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

<!-- JavaScript Libraries -->
<script src="lib/jquery/jquery.min.js"></script>
<script src="lib/jquery/jquery-migrate.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/superfish/hoverIntent.js"></script>
<script src="lib/superfish/superfish.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/magnific-popup/magnific-popup.min.js"></script>
<script src="lib/sticky/sticky.js"></script>

<!-- Contact Form JavaScript File -->
<script src="contactform/contactform.js"></script>

<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>
</html>
