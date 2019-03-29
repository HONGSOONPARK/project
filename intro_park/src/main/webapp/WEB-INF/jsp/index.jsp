<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-137183362-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	  gtag('config', 'UA-137183362-1');
	</script>
		

	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta http-equiv="Contnt-Type" content="text/html; charset=UTF-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<meta http-equiv="Subject" content="웹 개발자 포트폴리오" />
	<meta http-equiv="Author" content="PARK HONG SOON" />
	<meta name="Keywords" content="Web, html, 웹 표준, 웹 개발, 박홍순, hongsoon, 포트폴리오, portfolio, 취업, 웹 개발자 포트폴리오, 반응형웹, Spring, 전자정부프레임워크, bootstrap, jsp, jquery, css, 개발자 포트폴리오, 자기소개서, PARK HONG SOON" />

 <title>박홍순 자기소개</title>
 
  <!-- Favicons -->
  <link href="<c:url value='/resources/bootstrap/kelvin/img/favicon.png'/>" rel="icon">
  <link href="<c:url value='/resources/bootstrap/kelvin/img/apple-touch-icon.png'/>" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic|Raleway:400,300,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<c:url value='/resources/bootstrap/kelvin/lib/bootstrap/css/bootstrap.css'/>" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="<c:url value='/resources/bootstrap/kelvin/lib/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="<c:url value='/resources/bootstrap/kelvin/css/style.css'/>" rel="stylesheet">
  
  <link href="<c:url value='/resources/bootstrap/kelvin/css/ihover.css'/>" rel="stylesheet">

  <!-- =======================================================
    Template Name: Kelvin
    Template URL: https://templatemag.com/kelvin-bootstrap-resume-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body data-spy="scroll" data-offset="64" data-target="#section-topbar">

  <div id="section-topbar">
    <div id="topbar-inner">
      <div class="container">
        <div class="row">
          <div class="dropdown">
            <ul id="nav" class="nav">
              <li class="menu-item"><a class="smothscroll" href="#about" title="About"><i class="fa fa-user"></i></a></li>
              <li class="menu-item"><a class="smothscroll" href="#resume" title="Resume"><i class="fa fa-file-text-o"></i></a></li>
              <li class="menu-item"><a class="smothscroll" href="#portfolio" title="Portfolio"><i class="fa fa-briefcase"></i></a></li>
              <li class="menu-item"><a class="smothscroll" href="#contact" title="Contact"><i class="fa fa-envelope"></i></a></li>
            </ul>
            <!--/ uL#nav -->
          </div>
          <!-- /.dropdown -->

          <div class="clear"></div>
        </div>
        <!--/.row -->
      </div>
      <!--/.container -->

      <div class="clear"></div>
    </div>
    <!--/ #topbar-inner -->
  </div>
  <!--/ #section-topbar -->

  <div id="headerwrap">
    <div class="container" style="width: 100%">
      <div class="row centered">
<!--         <div class="col-lg-12"> -->
          <h1>Park Hong Soon</h1>
          <h3>Web Developer | phs39@naver.com</h3>
<!--         </div> -->
        <!--/.col-lg-12 -->
      </div>
      <!--/.row -->
    </div>
    <!--/.container -->
  </div>
  <!--/.#headerwrap -->


<!-- 소개 -->
<%@include file="/WEB-INF/jsp/section/about.jsp" %>
<!-- 교육, 경력-->
<%@include file="/WEB-INF/jsp/section/resume.jsp" %>
<!-- 스킬-->
<%@include file="/WEB-INF/jsp/section/skill.jsp" %>
<!-- 포트폴리오-->
<%@include file="/WEB-INF/jsp/section/portfolio.jsp" %>

<!-- 접근-->
<%@include file="/WEB-INF/jsp/section/contact.jsp" %>






  <div id="copyrights">
    <div class="container">
      <p>
        &copy; Copyrights <strong>Kelvin</strong>. All Rights Reserved
      </p>
      <div class="credits">
        <!--
          You are NOT allowed to delete the credit link to TemplateMag with free version.
          You can delete the credit link only if you bought the pro version.
          Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/kelvin-bootstrap-resume-template/
          Licensing information: https://templatemag.com/license/
        -->
        Created with Kelvin template by <a href="https://templatemag.com/">TemplateMag</a>
      </div>
    </div>
  </div>

  <!-- JavaScript Libraries -->
  <script src="<c:url value='/resources/bootstrap/kelvin/js/jquery-2.1.3.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap/kelvin/lib/bootstrap/js/bootstrap.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap/kelvin/lib/php-mail-form/validate.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap/kelvin/lib/chart/chart.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap/kelvin/lib/easing/easing.min.js'/>"></script>

  <!-- Template Main Javascript File -->
  <script src="<c:url value='/resources/bootstrap/kelvin/js/main.js'/>"></script>

</body>

</html>
