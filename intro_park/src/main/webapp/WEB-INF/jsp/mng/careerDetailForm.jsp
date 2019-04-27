<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 경력사항 내용 -->
<div id="introduceDiv" class="introduceDiv itd">
	<c:if test="${status2.count ne null }">
		<div align="right" class="">
			<button type="button" class="adminSaveBtn" id="introSaveBtn_${status2.count - 1}" onclick="introSaveBtn(this);" value="<c:url value='adminSaveBtn'/>" >저장&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span></button>
			<button type="button" class="adminSaveBtn" id="introDelBtn_${status2.count - 1}" onclick="introDelBtn(this);" value="<c:url value='/mng/careerDetailDel'/>" >삭제&nbsp;<span class="glyphicon glyphicon-remove-sign"></span></button>
		</div>
	</c:if>
	
	<p>프로젝트순서&nbsp;- <input type="text" value="${cardetailvo.getDetail_order() }" id="detail_order" name="detail_order" class="aboutText w35" /></p>
	<p>프로젝트이름 &nbsp;<input type="text" value="${cardetailvo.getProject_name() }" id="project_name" name="project_name" class="aboutText w100p" /></p>
	<p>프로젝트상세<textarea rows="8" class="aboutText txtArea" id="project_detail" name="project_detail">${cardetailvo.getProject_detail() }</textarea></p>
	
	
	<input type="hidden" value="N" id="del_yn" name="del_yn"/>
	<input type="hidden" value="${cardetailvo.getNo()}" id="no" name="no"/>
	<input type="hidden" value="${cardetailvo.getRef_no()}" id="ref_no"/>
	
	
</div>


<!-- 경력사항 내용 -->
