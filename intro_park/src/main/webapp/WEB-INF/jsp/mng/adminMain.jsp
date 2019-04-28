<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>관리자 메인</title>
	<%@ include file="/WEB-INF/include/include-resource.jspf" %>

	<script type="text/javascript">
	
	function moveScoll(div){

		
		var go;
		<c:if test='${empty scrollVo}'> var obj = "null"; </c:if>
		<c:if test='${!empty scrollVo}'> var obj = ${scrollVo };</c:if>

		if((div != "null" || div != "")&&(obj != "null")){
			
// 			alert(JSON.stringify(obj));
			
			if(div == 'career'){
				go = $("#"+div).find("#list_order[value='"+obj['list_order']+"']");
				if (typeof(obj['detail_order']) != "undefined"){
					go = $("#"+div).find("#ref_no[value='"+obj['ref_no']+"']").parent().find("#detail_order[value='"+obj['detail_order']+"']");		
				}
			}else{
				
				go = $("#"+div).find("#list_order[value='"+obj['list_order']+"']");	
			}
//				$('html, body').animate({scrollTop:go.offset().top}, 1500, 'easeInOutExpo');
			$('html, body').animate({scrollTop:go.offset().top - 300});			
		}
	}
	
	</script>

</head>
 
 
<body onload="moveScoll('<c:if test="${empty scrollTarget}">null</c:if><c:if test="${!empty scrollTarget}">${scrollTarget }</c:if>');" data-spy="scroll" data-offset="64" data-target="#section-topbar" class="mngMain">
<%-- <body onload="moveScoll('${scrollTarget }');" data-spy="scroll" data-offset="64" data-target="#section-topbar" class="mngMain"> --%>
	<div id="section-topbar">
		<div id="topbar-inner">
			<div class="container">
				<div class="row">
					<div class="dropdown">
						<ul id="nav" class="nav">
							<li class="menu-item"><a class="smothscroll" href="#about" title="about"><i class="fa fa-user"></i></a></li>
							<li class="menu-item"><a class="smothscroll" href="#education" title="education"><i class="fa fa-file-text-o"></i></a></li>
							<li class="menu-item"><a class="smothscroll" href="#career" title="career"><i class="fa fa-briefcase"></i></a></li>
							<li class="menu-item"><a class="smothscroll" href="#skill" title="skill"><i class="fa fa-book"></i></a></li>
							<li class="menu-item"><a class="smothscroll" href="#portfolio" title="portfolio"><i class="fa fa-folder-open"></i></a></li>
						</ul>
					</div>

					<div class="clear"></div>
				</div>
			</div>

			<div class="clear"></div>
		</div>
	</div>
	<section id="about" name="about" class="mngAbout">
		<h2 align="center">소개글</h2>

		<div class="container">
		<div align="right" class="">
			<a href="#addIntroduce" class="adminSaveBtn" id="addIntroduceBtn" data-toggle="modal" data-backdrop="static" data-keyboard="false">자기소개서 추가&nbsp;<span class="glyphicon glyphicon-plus-sign"></span></a>
		</div>
		<div id="aboutWrap" class="divWrap">
			<div id="aboutDiv" class="aboutDiv">
				<form id="frmAbout" method="post" action="<c:url value='/mng/aboutSave'/>"  style="overflow:auto">
					<div align="right" class="">
						<button type="button" class="adminSaveBtn" id="adminSaveBtn" onclick="ajaxSave(this,'form');">저장&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span></button>
					</div>
						<p>메인글자&nbsp;- <input type="text" value="${aboutvo.getTitle() }" id="title" name="title" class="aboutText w120" /></p>
						<p>메인밑에&nbsp;- <input type="text" value="${aboutvo.getSub_title() }" id="sub_title" name="sub_title" class="aboutText w120" /></p>
						<p>소개제목&nbsp;- <input type="text" value="${aboutvo.getCategory() }" id="category" name="category" class="aboutText w250" /></p>
						<p>간략소개<textarea rows="6" class="aboutText txtArea" id="introduce" name="introduce">${aboutvo.getIntroduce() }</textarea></p>				
				    <input type="hidden"  name="no" value="${aboutvo.no}" />
				</form>	
			</div>
		
			<c:choose>
				<c:when test="${fn:length(introducevo) > 0 }">
					<c:forEach var="invo" items="${introducevo }" varStatus="status">
						<form id="frmIntroduce_${status.count - 1}" method="post" action="<c:url value='/mng/introduceSave'/>">
							<%@ include file="/WEB-INF/jsp/mng/introduceForm.jsp" %>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</form>	
					</c:forEach>
				</c:when>
				<c:otherwise>
				<div align="center">
					<h3>등록된 자기소개서가 없습니다.</h3>
				</div>
				</c:otherwise>
			</c:choose>
		</div>
		</div>
		

	<!-- 자기소개 추가 Modal -->
	 <div id="addIntroduce" class="modal">
	   <div class="modal-dialog" >
	        <div class="modal-content">
	        <form id="frmInsertIntroduce" name="frmInsertIntroduce" method="post" action="<c:url value='/mng/introduceInsert'/>">
				<div class="modal-header">
				     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				     <h4 class="modal-title">자기소개 추가</h4>
				</div>
				<div id="modal-body" class="modal-body">
					<%@ include file="/WEB-INF/jsp/mng/introduceForm.jsp" %>  
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" onclick="saveBtn('frmInsertIntroduce');">저장</button>
<!-- 					<button type="button" class="btn btn-default" onclick="ajaxModalSave(this,'form');">저장</button> -->
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
	        </div>
	   </div>
	</div>
	<!-- 자기소개 추가 Modal -->
		
	</section>	
	
	
	<hr/>
	
	
	
	<section id="education" name="education" class="mngEducation">
		<h2 align="center">교육사항</h2>
			<div class="container desc">
				<div class="" align="right">
					<a href="#addEducation" id="addEducationBtn" class="adminSaveBtn" data-toggle="modal" data-backdrop="static" data-keyboard="false">교육사항 추가&nbsp;<span class="glyphicon glyphicon-plus-sign"></span></a> 
				</div>
				<c:choose>
					<c:when test="${fn:length(pfvo) > 0 }">
						<c:forEach var="eduvo" items="${educationvo }" varStatus="status">
							<div id="educationWrap" class="divWrap">
								<form id="frmEducation_${status.count - 1}" method="post" action="<c:url value='/mng/educationSave'/>">
									<%@ include file="/WEB-INF/jsp/mng/educationForm.jsp" %>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								</form>	
							</div>
	
						</c:forEach>
					</c:when>
					<c:otherwise>
					<div align="center">
						<h3>등록된 교육사항이 없습니다.</h3>
					</div>
					</c:otherwise>
				</c:choose>
	
			</div>
	
		<!-- 교육사항 추가 Modal -->
		 <div id="addEducation" class="modal">
		   <div class="modal-dialog" >
		        <div class="modal-content">
		        <form id="frmInsertEducation" name="frmInsertEducation"  method="post" action="<c:url value='/mng/educationInsert'/>">
		             <div class="modal-header">
		                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                  <h4 class="modal-title">교육사항 추가</h4>
		             </div>
							<div id="modal-body" class="modal-body">
								<%@ include file="/WEB-INF/jsp/mng/educationForm.jsp" %>  
							</div>
		             <div class="modal-footer">
		             	
		             	<button type="button" class="btn btn-default" onclick="saveBtn('frmInsertEducation');">저장</button>
<!-- 		             	<button type="button" class="btn btn-default" onclick="ajaxModalSave(this,'form');">저장</button> -->
		                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		             </div>
				  		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				  </form>
		        </div>
		   </div>
		</div>
		<!-- 교육사항 추가 Modal -->
	</section>
	
	<section id="career" name="career" class="mngCareer">
		<h2 align="center">경력사항</h2>
			<div class="container desc">
				<div class="" align="right">
					<a href="#addCareer" id="addCareerBtn" class="adminSaveBtn" data-toggle="modal" data-backdrop="static" data-keyboard="false">경력사항 추가&nbsp;<span class="glyphicon glyphicon-plus-sign"></span></a> 
					<a href="#addCareerDetail" id="addCareerDetailBtn" class="adminSaveBtn displayNone" data-toggle="modal" data-backdrop="static" data-keyboard="false">프로젝트 추가&nbsp;<span class="glyphicon glyphicon-plus-sign"></span></a> 
				</div>
				<c:choose>
					<c:when test="${fn:length(careervo) > 0 }">
						<c:forEach var="carvo" items="${careervo }" varStatus="status">
							<div id="careerWrap" class="divWrap">
							<form id="frmCareer_${status.count - 1}" method="post" action="<c:url value='/mng/careerSave'/>">
								<%@ include file="/WEB-INF/jsp/mng/careerForm.jsp" %>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							</form>	
							
							<c:forEach var="cardetailvo" items="${careerdetailvo }" varStatus="status2">
								<form id="frmCareerDetail_${status.count - 1}_${status2.count - 1}" method="post" action="<c:url value='/mng/careerDetailSave'/>">
									<c:if test="${cardetailvo.getRef_no() eq carvo.getNo() }">
										<%@ include file="/WEB-INF/jsp/mng/careerDetailForm.jsp" %>
									</c:if>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								</form>
							</c:forEach>
							</div>
						</c:forEach>
						
					</c:when>
					<c:otherwise>
					<div align="center">
						<h3>등록된 경력사항이 없습니다.</h3>
					</div>
					</c:otherwise>
				</c:choose>
	
			</div>
	
		<!-- 경력 추가 Modal -->
		 <div id="addCareer" class="modal">
		   <div class="modal-dialog" >
		        <div class="modal-content">
		        <form id="frmInsertCareer" name="frmInsertCareer" method="post" action="<c:url value='/mng/careerInsert'/>">
		             <div class="modal-header">
		                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                  <h4 class="modal-title">경력사항 추가</h4>
		             </div>
					 <div id="modal-body" class="modal-body">
						<%@ include file="/WEB-INF/jsp/mng/careerForm.jsp" %>  
					 </div>
		             <div class="modal-footer">
<!-- 		             	<button type="button" class="btn btn-default" onclick="ajaxModalSave(this,'career');">저장</button> -->
						<button type="button" class="btn btn-default" onclick="saveBtn('frmInsertCareer');">저장</button>
		                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		             </div>
				  		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				  </form>
		        </div>
		   </div>
		</div>
		<!-- 경력 추가 Modal -->
		
		
		<!-- 경력 프로젝트 추가 Modal -->
		 <div id="addCareerDetail" class="modal">
		   <div class="modal-dialog" >
		        <div class="modal-content">
		        <form id="frmInsertCareerDetail" name="frmInsertCareerDetail" method="post" action="<c:url value='/mng/careerDetailInsert'/>">
		             <div class="modal-header">
		                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                  <h4 class="modal-title">프로젝트 추가</h4>
		             </div>
							<div id="modal-body" class="modal-body">
								<%@ include file="/WEB-INF/jsp/mng/careerDetailForm.jsp" %>
								<input type="hidden" value="${carvo.getNo()}"  id="insPrjRefNo" name="ref_no"/>  
							</div>
		             <div class="modal-footer">
<!-- 		             	<button type="button" class="btn btn-default" onclick="ajaxModalSave(this,'career');">저장</button> -->
						<button type="button" class="btn btn-default" onclick="saveBtn('frmInsertCareerDetail');">저장</button>
		                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		             </div>
				  		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				  		
				  </form>
		        </div>
		   </div>
		</div>
		<!-- 경력 프로젝트 추가 Modal -->		
	</section>	


	<section id="skill" name="skill" class="mngSkill">
		<h2 align="center">보유기술</h2>
			<div class="container desc">
				<div class="" align="right">
					<a href="#addSkill" id="addSkillBtn" class="adminSaveBtn" data-toggle="modal" data-backdrop="static" data-keyboard="false">보유기술 추가&nbsp;<span class="glyphicon glyphicon-plus-sign"></span></a> 
				</div>
				<c:choose>
					<c:when test="${fn:length(skillvo) > 0 }">
						<c:forEach var="skvo" items="${skillvo }" varStatus="status">
							<div id="skillWrap" class="divWrap">
								<form id="frmSkill_${status.count - 1}" method="post" action="<c:url value='/mng/skillSave'/>">
									<%@ include file="/WEB-INF/jsp/mng/skillForm.jsp" %>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								</form>	
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
					<div align="center">
						<h3>등록된 보유기술이 없습니다.</h3>
					</div>
					</c:otherwise>
				</c:choose>
	
			</div>
	
		<!-- 보유기술 Modal -->
		 <div id="addSkill" class="modal">
		   <div class="modal-dialog" >
		        <div class="modal-content">
		        <form id="frmInsertSkill" name="frmInsertSkill" method="post" action="<c:url value='/mng/skillInsert'/>">
		             <div class="modal-header">
		                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                  <h4 class="modal-title">보유기술 추가</h4>
		             </div>
							<div id="modal-body" class="modal-body">
								<%@ include file="/WEB-INF/jsp/mng/skillForm.jsp" %>
							</div>
		             <div class="modal-footer">
						<button type="button" class="btn btn-default" onclick="saveBtn('frmInsertSkill');">저장</button>
		                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		             </div>
				  		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				  </form>
		        </div>
		   </div>
		</div>
		<!-- 보유기술 추가 Modal -->		
		
		
	</section>












	
	<section id="portfolio" name="portfolio" class="mngPortfolio">
	<h2 align="center">포트폴리오</h2>
		<div class="container desc">
			<div class="" align="right">
				<a href="#addPortfolio" id="addPortfolioBtn" class="adminSaveBtn" data-toggle="modal" data-backdrop="static" data-keyboard="false">포트폴리오 추가&nbsp;<span class="glyphicon glyphicon-plus-sign"></span></a> 
			</div>
			<c:choose>
				<c:when test="${fn:length(pfvo) > 0 }">
					<c:forEach var="list" items="${pfvo }" varStatus="status">
						<div id="portfolioWrap" class="divWrap">
						<form id="frmPortfolio_${status.count - 1}"  enctype="multipart/form-data" method="post" action="<c:url value='/mng/pfSave'/>">
							<%@ include file="/WEB-INF/jsp/mng/portfolioForm.jsp" %>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</form>
						</div>	

					</c:forEach>
				</c:when>
				<c:otherwise>
				<div align="center">
					<h3>등록된 포트폴리오가 없습니다.</h3>
				</div>
				</c:otherwise>
			</c:choose>

		</div>

	<!-- 포트폴리오 추가 Modal -->
	 <div id="addPortfolio" class="modal">
	   <div class="modal-dialog" >
	        <div class="modal-content">
	        <form id="frmInsertPortfolio" name="frmInsertPortfolio" enctype="multipart/form-data" method="post" action="<c:url value='/mng/pfInsert'/>">
	             <div class="modal-header">
	                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                  <h4 class="modal-title">포트폴리오 추가</h4>
	             </div>
						<div id="modal-body" class="modal-body">
							<%@ include file="/WEB-INF/jsp/mng/portfolioForm.jsp" %>  
						</div>
	             <div class="modal-footer">
	             		<button type="button" class="btn btn-default" onclick="javascript:pfModalSaveBtn();">저장</button>
	                  <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	             </div>
			  		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			  </form>
	        </div>
	   </div>
	</div>
	<!-- 포트폴리오 추가 Modal -->
	


		
	</section>


	
</body>
</html>
