<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

 <title>홍순's 관리자 페이지</title>
 
  <!-- Favicons -->
  <link href="<c:url value='/resources/bootstrap/kelvin/img/favicon.png'/>" rel="icon">
  <link href="<c:url value='/resources/bootstrap/kelvin/img/apple-touch-icon.png'/>" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic|Raleway:400,300,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<c:url value='/resources/bootstrap/kelvin/lib/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">

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




  <section id="adminLogin" name="adminLogin">
    <div id="intro">
      <div class="container">
      	<div class="row">
      	   <div class="col-lg-5 col-lg-offset-3">
			<div class="img">
				<img class="img-responsive" src="<c:url value='/resources/hong.jpg'/>" alt="" title="">
			</div>
		</div>
      	
      	</div>
        <div class="row">
          <div class="col-lg-3 col-lg-offset-3">
            <h5>관리자 로그인</h5>
          </div>
		            
          <div class="col-lg-6  col-lg-offset-3">
            <span><h5>이름</h5><input type="text" id="id" name="id" value=""/></span>
            <span><h5>암호</h5><input type="text" id="password" name="password" value=""/></span>
          </div>
          
          <div class="col-lg-3 col-lg-offset-3">
            <input type="button" class="admin_button" id="" name="" value="간다" />
          </div>
          
      
          

          
        </div>
        <!--/.row -->
      </div>
      <!--/.container -->
    </div>
    <!--/ #intro -->
  </section>

  <!-- JavaScript Libraries -->
  <script src="<c:url value='/resources/bootstrap/kelvin/lib/jquery/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap/kelvin/lib/bootstrap/js/bootstrap.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap/kelvin/lib/php-mail-form/validate.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap/kelvin/lib/chart/chart.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap/kelvin/lib/easing/easing.min.js'/>"></script>



  <!-- Template Main Javascript File -->
  <script src="<c:url value='/resources/bootstrap/kelvin/js/main.js'/>"></script>

</body>
</html>
