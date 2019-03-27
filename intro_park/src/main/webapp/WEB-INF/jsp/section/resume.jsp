<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <section id="resume" name="resume">
    <!--EDUCATION DESCRIPTION -->
    <div class="container desc">
      <div class="row">

        <div class="col-lg-2 col-lg-offset-1">
          <h5>교육과정</h5>
        </div>
        <div class="col-lg-6">
          <p>
            <t>한국교통대학교</t><br/> 컴퓨터정보공학과 <br/>
            <i>학사 </i>
          </p>
        </div>
        <div class="col-lg-3">
          <p>
            <sm>2010.03 ~ 2016.02</sm><br/>
            <imp>
              <sm>졸업</sm>
            </imp>
          </p>
        </div>

        <div class="col-lg-6 col-lg-offset-3">
          <p>
            <t>방송국제교육원</t><br/> 정보시스템개발과정 <br/>
            <i>SPRING FRAMEWORK, JAVA, JAVASCRIPT, HTML, CSS, JQUERY, 알고리즘, 논리적사고방식, 데이터모델링, ORACLE, SQL</i>
          </p>
        </div>
        <div class="col-lg-3">
          <p>
            <sm>2015.07 ~ 2015.12</sm><br/>
            <imp>
              <sm>교육수료</sm>
            </imp>
          </p>
        </div>

      </div>
      <!--/.row -->
      <br>
      <hr>
    </div>
    <!--/.container -->

  <!--WORK DESCRIPTION -->
  <div id="section-work" class="container desc">
    <div class="row">

      <div class="col-lg-2 col-lg-offset-1">
        <h5>경력사항</h5>
      </div>
      <div class="col-lg-6">
        <p>
          <t>(주)에버트러스트정보기술</t><br/>
          <i>사내 ERP담당(유지보수,개발) / SI 프로젝트 지원</i><br/>
        </p>
        
        <ul id="nav" class="nav">
        	<span><i class="glyphicon glyphicon-folder-close"></i> 
        		사내 ERP 시스템, 홈페이지  관리 및 개발
        	</span>
        	<more>
			<li class="">ERP 시스템 개선방안분석제공</li>
			<li class="">인사,사업,자산관리시스템 개선,개발</li>
			<li class="">사고예방,장애 발생 최소화</li>
			<li class="">사용자요청처리</li>
			<li class="">데이터백업 및 관리</li>
			</more>
        </ul>
        <br/><br/>
        <ul id="nav" class="nav">
        	<span><i class="glyphicon glyphicon-folder-close"></i> 
        		한국승강기안전공단 홈페이지 관리 및 개발
        	</span>
        	<more>
				<li class="">시스템운영 </li>
				<li class="">고객의 소리(VOC) 시스템 개발 </li>
				<li class="">국민 참여 시스템 개발 </li>
				<li class="">시큐어코딩 보안 추가 </li>
			</more>
        </ul>
		<br/><br/>
        <ul id="nav" class="nav">
        	<span><i class="glyphicon glyphicon-folder-close"></i> 
        		SI 프로젝트 참여
        	</span>
        	<more>
	        	<li>한전KDN 종합자산관리시스템 유지보수 지원</li>
				<li>한국남동발전 환경감시 시스템 개선</li>
				<li>한국남동발전 KDN ICT사업소 품질협업관리 시스템 리뉴얼 작업</li>
				<li>한국동서발전 환경감시 시스템 개선, 리뉴얼작업</li>
			</more>
        </ul>
        <br/>

      </div>
      <div class="col-lg-3">
        <p>
          <sm>2016.03 - 2018.03</sm><br/>
          <imp>
              <sm>퇴사</sm>
          </imp>
        </p>
        
        <p><a href="#"><i class="icon-file"></i></a>
<!--               <sm>소프트웨어기술자 열람  &nbsp;<span class="glyphicon glyphicon-search"></span></sm> -->
              <sm><a href="#software_engineer" class="" data-toggle="modal">소프트웨어기술자 열람</a>  &nbsp;<span class="glyphicon glyphicon-search"></span></sm>
        </p>
        
          <div id="software_engineer" class="modal">
		     <div class="modal-dialog">
		          <div class="modal-content">
		               <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                    <h4 class="modal-title">소프트웨어 기술자<a href="<c:url value='/resources/박홍순_소프트웨어기술자경력증명서.pdf'/> "><small>( pdf&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span> )</small></a></h4>
		               </div>
		               <div class="modal-body">
		               <img src="<c:url value='/resources/박홍순_소프트웨어기술자경력증명서_01.jpg'/>" style="max-width: 100%; height: auto;"/>
		               <img src="<c:url value='/resources/박홍순_소프트웨어기술자경력증명서_02.jpg'/>" style="max-width: 100%; height: auto;" />
		               </div>

		               
		               
		               <div class="modal-footer">
		                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
<!-- 		                    <button type="button" class="btn btn-primary">자기소개서 받기<small>(PDF)</small></button> -->
		               </div>
		          </div>
		     </div>
			</div>
        
        
        
        
        
        
        
      </div>
      
    <!--/.row -->
    <br/>
    <hr>
  </div>
  </div>
  <!--/.container -->
 </section>

 