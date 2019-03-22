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
      
      <!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
      <div class="row">
      
        <div id="school" class="col-lg-2 col-lg-offset-1">
          <h5>PORTFOLIO(<t>학부</t>)</h5>
        </div>
        
		<div class="col-lg-6">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/portfolio01.png'/>" alt="환상의 카풀" title="카풀 사용자를 위한 웹 어플리케이션">
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
        
        <!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/portfolio02.png'/>" alt="타욧다욧" title="자전거 대여소 관리 웹 어플리케이션">
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
      
      
    <!--  ------------------------------------------------------------------------------------------------------ -->
	<div id="work" class="row">
		<div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/spring.png'/>" alt="erp" title="사내 ERP(인사관리,사업관리,영업곤리,회계관리..)">
		        </div>
		        <div class="info">
		          <h3>준비중입니다.</h3>
		          <p></p>
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
          	</more>
          </p>
        </div>
        
        <!--  ------------------------------------------------------------------------------------------------------ -->
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/spring.png'/>" alt="noimage" title="사내ERP 인사관리 시스템개선">
		        </div>
		        <div class="info">
		          <h3>준비중입니다.</h3>
		          <p></p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 사내 ERP 인사관리 시스템 개선</p>
          <p><more>연차시스템 개선</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2017.01.02 ~ 2017.03.31 &nbsp;(3개월)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          		연차신청, 연차일수계산 시스템 개발<br/>
          		권한등록관리 화면 개선
          	</more>
          </p>
        </div>
        
        
		<!--  ------------------------------------------------------------------------------------------------------ -->
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/spring.png'/>" alt="noimage" title="사내ERP 사업관리 시스템 개선">
		        </div>
		        <div class="info">
		          <h3>준비중입니다.</h3>
		          <p></p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 사내 ERP 사업관리 시스템 개선</p>
          <p><more>사업관리, 출장관리 화면 생성</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2018.01.02 ~ 2018.02.05 &nbsp;(1개월)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          		지출결의서관리, 출장번호관리, 사업관리 페이지 개발 <br/>
          	</more>
          </p>
        </div>        


		<!--  ------------------------------------------------------------------------------------------------------ -->
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="http://www.evertrust.co.kr">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/ever_home.png'/>" alt="(주)에버트러스트정보기술" title="(주)에버트러스트정보기술 홈페이지">
		        </div>
		        <div class="info">
		          <h3>홈페이지 이동하기</h3>
		          <p>클릭</p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 사내 홈페이지 리뉴얼 작업 및 유지보수</p>
          <p><more>홈페이지 디자인 변경</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2017.03.06 ~ 2018.03.21 &nbsp;(2주)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
	          	팝업창 관리기능 수정 담당<br/>
				관리자 페이지 개발 및 수정 담당<br/>
				(통계 그래프 페이지, 신규 게시글 작성페이지)<br/>
          	</more>
          </p>
        </div>        
        
        
		<!--  ------------------------------------------------------------------------------------------------------ -->
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="https://www.koelsa.or.kr">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/koelsa_home.png'/>" alt="승강기안전공단 홈페이지" title="승강기안전공단 홈페이지">
		        </div>
		        <div class="info">
		          <h3>홈페이지 이동 하기</h3>
		          <p>클릭</p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 승강기안전공단 홈페이지 운영</p>
          <p><more>홈페이지 운영 및 유지보수</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2017.03.27 ~ 2018.03.21 &nbsp;(1년)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          		승강기 안전공단 홈페이지, 관리자페이지 시스템운영 및 장애 발생 최소화, 사용자 불편사항 최소화
          	</more>
          </p>
        </div>        
        
        
		<!--  ------------------------------------------------------------------------------------------------------ -->
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="https://www.koelsa.or.kr/wpge/m_269/customer/customer0106.do">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/koelsa_voc.png'/>" alt="승강기안전공단_voc" title="승강기안전공단 고객의소리(VOC) 시스템 ">
		        </div>
		        <div class="info">
		          <h3>홈페이지 이동 하기</h3>
		          <p>클릭</p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 승강기안전공단 고객의 소리(VOC) 시스템 개발</p>
          <p><more>VOC 시스템 개발</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2017.10.23 ~ 2017.12.01 &nbsp;(1개월)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          		시스템분석 및 개발
신규카테고리 생성 및 게시판 생성
VOC 관리자페이지 신규 추가개발
테스트환경구축담당(ECLIPSE/ORACLE/MYSQL)
데이터백업 및 관리
사용기술:전자정부프레임워크, JAVA, JSP, HTML, JAVASCRIPT, ORACLE, MYSQL
          	</more>
          </p>
        </div>        
        
        
		<!--  ------------------------------------------------------------------------------------------------------ -->
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/koelsa_participation.png'/>" alt="승강기안전공단 국민참여" title="승강기안전공단 국민참여 시스템">
		        </div>
		        <div class="info">
		          <h3>홈페이지 이동 하기</h3>
		          <p>클릭</p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 승강기안전공단 국민 참여 시스템 개발</p>
          <p><more>국민 참여 시스템 개발</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2018.01.02 ~ 2018.03.21 &nbsp;(2개월)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
	          	시스템분석 및 개발
				신규카테고리 생성 및 게시판 생성
				데이터백업 및 관리
				사용기술:전자정부프레임워크, JAVA, JSP, HTML, JAVASCRIPT, ORACLE, MYSQL
          	</more>
          </p>
        </div>        
        
		<!--  ------------------------------------------------------------------------------------------------------ -->
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/kdn.jpg'/>" alt="kdn유지보수" title="종합자산관리시스템 유지보수 지원">
		        </div>
		        <div class="info">
		          <h3>준비중입니다.</h3>
		          <p></p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 한전KDN 종합자산관리시스템 (M-PRO) 유지보수</p>
          <p><more>유지보수지원</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2016.07.28 ~ 2016.08.12 &nbsp;(2주)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          	사용자요청 응대 및 오류데이터 수정
시스템 장애 발생 시 장애원인 파악 및 정상화
시스템 기능 추가 요청 시 기능 추가
          	</more>
          </p>
        </div>        
        
        
     <!--  ------------------------------------------------------------------------------------------------------ -->
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/koen.jpg'/>" alt="한국남동발전" title="남동발전소 환경감시 시스템 기능 개선">
		        </div>
		        <div class="info">
		          <h3>준비중입니다.</h3>
		          <p></p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 남동발전소 환경감시 TMS 시스템 기능개선</p>
          <p><more>환경감시 웹 페이지 개선</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2016.04.01 ~ 2016.06.30 &nbsp;(3개월)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          	테스트환경구축 담당(ECLIPSE/ORACLE)
DB user 변경에 따른 소스변경작업담당
실측 DB data 정리, INSERT SCRIPT 생성담당
신규 테이블 생성 및 관리담당
웹 화면 생성 및 변경담당(측정기기별 조회화면, 측정항목별 조회화면, 사용자관리화면)
웹 로직 설치 및 프로젝트 연동담당
사용기술:JAVA, JSP, JAVASCRIPT, ORACLE
          	</more>
          </p>
        </div>   
        
             
       <!--  ------------------------------------------------------------------------------------------------------ -->
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/koen.jpg'/>" alt="한국남동발전" title="품질협업관리 시스템 리뉴얼작업">
		        </div>
		        <div class="info">
		          <h3>준비중입니다.</h3>
		          <p></p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 남동발전 KDN ICT 사업소 품질협업관리 시스템 리뉴얼 작업</p>
          <p><more>시스템 웹 디자인 리뉴얼</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2017.05.15 ~ 2017.06.30 &nbsp;(1개월)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          	</more>
          </p>
        </div>        
        
		<!--  ------------------------------------------------------------------------------------------------------ -->
        
        
        <div class="col-lg-6 col-lg-offset-3">
			<div class="ih-item square effect13 top_to_bottom">
		    <a href="#">
		    	<div class="img">
		        	<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/ewp.gif'/>" alt="한국동서발전" title="동서발전소 환경감시 시스템 기능 개선">
		        </div>
		        <div class="info">
		          <h3>준비중입니다.</h3>
		          <p></p>
		        </div>
		     </a>
			</div>
		</div>
        
        <div id="pr_p" class="col-lg-3">
          <t>(주)에버트러스트정보기술</t>
          <p>프로젝트 &nbsp;- 동서발전소 환경감시 TMS 시스템 기능개선</p>
          <p><more>시스템개선, 리뉴얼</more></p>
          <p>수행기간 &nbsp;</p>
          <p><more>2017.07.03 ~ 2017.09.29 &nbsp;(3개월)</more></p>
          <p>수행내용</p>
          <p>
          	<more>
          		시스템분석 및 개발
테스트환경구축 담당(ECLIPSE/ORACLE)
신규 테이블 생성 및 관리
웹페이지와 SMS 연동테이블에 데이터 INSERT 쿼리 생성 관리
CRNONTAB 작성 및 수정
          	</more>
          </p>
        </div>        
        
        

        
        
        
	<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
        
        
	</div>

  
  </section>
