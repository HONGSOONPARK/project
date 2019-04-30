<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 경력사항 내용 -->
<div id="introduceDiv" class="introduceDiv itd">
	<c:if test="${status.count ne null }">
		<div align="right" class="">

		<c:choose>
		<c:when test='${memberdetailvo.getMember_role() eq "A"}'>
			<button type="button" class="adminSaveBtn" id="addProjectDetail_${status.count - 1}" onclick="btnTrigger('addCareerDetailBtn','${carvo.getNo()}');">프로젝트추가&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span></button>
			<button type="button" class="adminSaveBtn" id="introSaveBtn_${status.count - 1}" onclick="introSaveBtn(this);" value="<c:url value='/mng/careerSave'/>" >저장&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span></button>
			<button type="button" class="adminSaveBtn" id="introDelBtn_${status.count - 1}" onclick="cdDelBtn(this);" value="<c:url value='/mng/careerDel'/>" >삭제&nbsp;<span class="glyphicon glyphicon-remove-sign"></span></button>
		</c:when>
		<c:otherwise><b>쓰기,삭제 권한 없음</b></c:otherwise>
		</c:choose>		
		

		</div>
	</c:if>
	
	<div align="center">
		<h3>${carvo.getName() }</h3>
	</div>
	<p>정렬순서&nbsp;- <input type="text" value="${carvo.getList_order() }" id="list_order" name="list_order" class="aboutText w35" /></p>
	<p>공개여부&nbsp;- 
		<select class="aboutText w65" id="use_yn" name="use_yn">
			<option value="" <c:if test="${carvo.getUse_yn() eq null}">selected="selected"</c:if> >선택</option>
			<option value="Y" <c:if test="${carvo.getUse_yn() eq 'Y'}">selected="selected"</c:if> >공개</option>
			<option value="N" <c:if test="${carvo.getUse_yn() eq 'N'}">selected="selected"</c:if> >비공개</option>
		</select>
	</p>
	
	<p>회사이름 &nbsp;- <input type="text" value="${carvo.getName() }" id="name" name="name" class="aboutText w200" /></p>
	<p>고용형태 &nbsp;- <input type="text" value="${carvo.getType() }" id="type" name="type" class="aboutText w200" /></p>
	<p>입사일자 &nbsp;- <input type="text" value="${carvo.getStart_date() }" id="start_date" name="start_date" class="aboutText w200" /></p>
	<p>퇴사일자 &nbsp;- <input type="text" value="${carvo.getEnd_date() }" id="end_date" name="end_date" class="aboutText w200" /></p>
	<p>현재상태 &nbsp;- <input type="text" value="${carvo.getStatus() }" id="status" name="status" class="aboutText w200" /></p>
	<p>상세내용<textarea rows="4" class="aboutText txtArea" id="detail" name="detail">${carvo.getDetail() }</textarea></p>
	
	<input type="hidden" value="N" id="del_yn" name="del_yn"/>
	<input type="hidden" value="${carvo.getNo()}"  id="no" name="no"/>
	<hr/>
	
</div>


<!-- 경력사항 내용 -->
