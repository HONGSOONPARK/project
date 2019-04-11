<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>관리자 로그인</title>
 	<%@ include file="/WEB-INF/include/include-resource.jspf" %>
</head>

<body data-spy="scroll" data-offset="64" data-target="#section-topbar">

	<section id="adminLogin" name="adminLogin">
		<div id="intro">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-lg-offset-3">
					</div>

				</div>
				<div class="row">
					<div class="col-lg-3 col-lg-offset-3">
						<h5>관리자 로그인</h5>
					</div>


				<form id="frmLogin" name="frmLogin" method="post">
					<div class="loginInput col-lg-6  col-lg-offset-3">
						<span><h5>이름</h5>
							<input type="text" class="frm_txt" id="id" name="id" value="" /></span> <span><h5>암호</h5>
							<input type="password" class="frm_txt" id="password" name="password" value="" /></span>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</div>
					<div class="col-lg-3 col-lg-offset-3">
						<input type="submit" class="frm_btn" id="" name="" value="접속" />
					</div>
				</form>

				</div>
				<!--/.row -->
			</div>
			<!--/.container -->
		</div>
		<!--/ #intro -->
	</section>
</body>
</html>
