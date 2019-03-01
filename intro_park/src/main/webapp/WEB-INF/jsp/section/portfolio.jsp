<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <section id="portfolio" name="portfolio">
    <!--PORTFOLIO DESCRIPTION -->
     <ul id="nav" class="nav col-lg-offset-4 desc">
     	<i class="glyphicon glyphicon-search"></i>
		<li><t><a class="smothscroll" href="#school">학부</a></t></li>
		<li><t><a class="smothscroll" href="#work">경력</a></t></li>
		<li><t><a class="smothscroll" href="#personal">개인</a></t></li>
	</ul>
    <div class="container desc">
      <hr/>
      <div class="row">
      
        <div id="school" class="col-lg-2 col-lg-offset-1">
          <h5>PORTFOLIO(<t>학부</t>)</h5>
        </div>
        
		<div class="col-lg-6">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/portfolio01.png'/>" alt="환상의 카풀">
		        </div>
		        <div class="info">
		          <h3>프로젝트 산출물 다운받기</h3>
		          <p>클릭</p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>정보시스템개발(Semi-Project)</t>
          <p>프로젝트 &nbsp;- 환상의 카풀</p>
          <p><more>카풀 이용자들을 위한 웹</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2015.10.12 ~ 2015.10.23 &nbsp;(2주)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          			Servlet, Jsp MVC2 패턴 작성     <br/>
          			DB테이블 설계, DB Connection 연결 <br/>
          			사용자 게시판, 로그인화면 구현 <br/>
          	</more>
          </p>
        </div>
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/portfolio02.png'/>" alt="타욧다욧">
		        </div>
		        <div class="info">
		          <h3>프로젝트 산출물 다운받기</h3>
		          <p>클릭</p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>정보시스템개발(Project)</t>
          <p>프로젝트 &nbsp;- 타욧다욧</p>
          <p><more>자전거 대여소 관리 웹</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2015.11.16 ~ 2015.12.08 &nbsp;(3주)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          			SpringFramework 환경구성 <br/>
          			SpringMVC 활용<br/>
          			Ajax, jQuery 스크립트 작성		<br/>
          			관리자전용화면, 메인화면 개발 		 <br/>
          			ER다이어그램 작성, DB설계 		 <br/>
          	</more>
          </p>
        </div>
      </div>
      <hr/>
      <!--/.row -->
      <br>
      
	<div class="row">
        <div id="work" class="col-lg-2 col-lg-offset-1">
          <h5>PORTFOLIO(<t>경력</t>)</h5>
        </div>
        
        
        		<div class="col-lg-6">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/spring.png'/>" alt="환상의 카풀">
		        </div>
		        <div class="info">
		          <h3>프로젝트 산출물 다운받기</h3>
		          <p>클릭</p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 사내 ERP시스템 관리/개발</p>
          <p><more>사내ERP관리</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2016.10.10 ~ 2018.03.21 &nbsp;(1년 7개월)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          			Servlet, Jsp MVC2 패턴 작성     <br/>
          			DB테이블 설계, DB Connection 연결 <br/>
          			사용자 게시판, 로그인화면 구현 <br/>
          	</more>
          </p>
        </div>
        
        
        
        
	</div>

  
  </section>
