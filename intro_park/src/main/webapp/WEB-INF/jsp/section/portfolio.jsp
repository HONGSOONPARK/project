<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<section id="portfolio" name="portfolio">
    <!--PORTFOLIO DESCRIPTION -->
<!--      <ul id="nav" class="nav col-lg-offset-4 desc"> -->
<!--      	<i class="glyphicon glyphicon-search"></i> -->
<!-- 		<li><t><a class="smothscroll" href="#school">학부</a></t></li> -->
<!-- 		<li><t><a class="smothscroll" href="#work">경력</a></t></li> -->
<!-- 		<li><t><a class="smothscroll" href="#personal">개인</a></t></li> -->
<!-- 	</ul> -->
	<div class="container desc">
	<hr/>      
      <!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
      
	
	<div class="row">
		<div id="school" class="col-lg-2 col-lg-offset-1">
			<h5>PORTFOLIO<t></t></h5>
		</div>
	
		<c:choose>
			<c:when test="${fn:length(list) > 0 }">
				<c:forEach var="list" items="${list }" varStatus="status">
				<!-- 포트폴리오 이미지 -->
				
				<c:if test="${status.count eq 1 }">
					<div class="col-lg-6">
				</c:if>
				<c:if test="${status.count > 1 }">
					<div class="col-lg-6 col-lg-offset-3">
				</c:if>
						<div class="ih-item square effect13 top_to_bottom">
					    
<%-- 					    <a href="<c:if test="${list.getEtc1() eq null }">#this</c:if><c:if test="${list.getEtc1 ne null }">"${list.getEtc1()}"</c:if>"> --%>
						<c:if test="${list.getEtc1() eq '' }"><a href="#this"></c:if>
						<c:if test="${list.getEtc1() ne '' }"><a href="${list.getEtc1() }"></c:if>
					    	<div class="img">
					        	<img class="img-responsive" src="<c:url value='/uploads/portfolio/${list.getFile_stored_name()}'/>" alt="${list.getProject_title() }" title="${list.getFile_explain()}" />
					        </div>
			        		<div class="info">
			        		<c:if test="${list.getEtc1() eq '' }"><h3>준비중입니다.</h3></c:if>
			        		<c:if test="${list.getEtc1() ne '' }"><h3>보기</h3></c:if>
							<p>클릭</p>
							</div>
						</a>
						</div>
				</div>
				<!-- 포트폴리오 이미지 -->
				
				<!-- 포트폴리오 내용 -->
				<div id="pr_p" class="col-lg-3">
					<t>${list.getCorp()}</t>
					<p>프로젝트 &nbsp;- ${list.getProject_title()}</p>
					<p><more>${list.getProject_intro()}</more></p>
					<p>수행기간 &nbsp;</p>
					<p><more>${list.getStart_date()} ~ ${list.getEnd_date()} &nbsp;</more></p>
					<p>수행내용</p>
					<p><more>${list.getContents()}</more></p>
					<p>성과</p>
					<p><more>${list.getResult()}</more></p>
				</div>
				<br/><br/>			
					
				</c:forEach>
			</c:when>
			<c:otherwise>
			<div align="center">
				<h3>등록된 포트폴리오가 없습니다.</h3>
			</div>
			</c:otherwise>
		</c:choose>
		
		
	</div>
	
	<br/>
	<br/>
	<br/>
	<br/>
  
</section>

