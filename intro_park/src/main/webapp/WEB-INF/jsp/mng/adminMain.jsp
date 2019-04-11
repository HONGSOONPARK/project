<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>관리자 메인</title>
	<%@ include file="/WEB-INF/include/include-resource.jspf" %>

</head>

<body data-spy="scroll" data-offset="64" data-target="#section-topbar">
	<section id="adminMain" name="adminMain">
		<div class="container desc">
			<div class="" align="right">
<!--             	<a href="#addPortfolio" class="" data-toggle="modal" data-backdrop="static" data-keyboard="false">포트폴리오 추가</a>  -->
				<a href="#addPortfolio" class="pfBtn" data-toggle="modal" data-backdrop="static" data-keyboard="false">포트폴리오 추가&nbsp;<span class="glyphicon glyphicon-plus-sign"></a> 
			</div>
			<c:choose>
				<c:when test="${fn:length(pfvo) > 0 }">
					<c:forEach var="list" items="${pfvo }" varStatus="status">
						<form id="frmPortfolio_${status.count - 1}"  enctype="multipart/form-data" method="post" action="<c:url value='/mng/pfSave'/>">
							<%@ include file="/WEB-INF/jsp/mng/portfolioForm.jsp" %>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</form>	
					</c:forEach>
				</c:when>
				<c:otherwise>
				<div align="center">
					<h3>등록된 포트폴리오가 없습니다.</h3>
				</div>
				</c:otherwise>
			</c:choose>

		</div>
	</section>

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
	
</body>
</html>
