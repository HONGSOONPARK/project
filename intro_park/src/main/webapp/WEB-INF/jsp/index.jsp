<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>홍순의 포트폴리오</title>
	<%@ include file="/WEB-INF/include/include-resource.jspf" %>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-137183362-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	  gtag('config', 'UA-137183362-1');
	</script>
		
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
						<li class="menu-item"><a class="smothscroll" href="#skillswrap" title="skill"><i class="fa fa-book"></i></a></li>
						<li class="menu-item"><a class="smothscroll" href="#portfolio" title="Portfolio"><i class="fa fa-briefcase"></i></a></li>
						<li class="menu-item"><a class="smothscroll" href="#contact" title="Contact"><i class="fa fa-envelope"></i></a></li>
				  	</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
</div>

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


</body>

</html>
