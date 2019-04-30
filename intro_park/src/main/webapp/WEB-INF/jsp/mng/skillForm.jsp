<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 보유기술 내용 -->
<div id="introduceDiv" class="introduceDiv itd">
	<c:if test="${status.count ne null }">
		<div align="right" class="">
		<c:choose>
		<c:when test='${memberdetailvo.getMember_role() eq "A"}'>
			<button type="button" class="adminSaveBtn" id="introSaveBtn_${status.count - 1}" onclick="introSaveBtn(this);" value="<c:url value='/mng/skillSave'/>" >저장&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span></button>
			<button type="button" class="adminSaveBtn" id="introDelBtn_${status.count - 1}" onclick="cdDelBtn(this);" value="<c:url value='/mng/skillDel'/>" >삭제&nbsp;<span class="glyphicon glyphicon-remove-sign"></span></button>
		</c:when>
		<c:otherwise><b>쓰기,삭제 권한 없음</b></c:otherwise>
		</c:choose>

		</div>
	</c:if>
	
	<p>정렬순서&nbsp;- <input type="text" value="${skvo.getList_order()}" id="list_order" name="list_order" class="aboutText w35" /></p>
	<p>공개여부&nbsp;- 
		<select class="aboutText w65" id="use_yn" name="use_yn">
			<option value="" <c:if test="${skvo.getUse_yn() eq null}">selected="selected"</c:if> >선택</option>
			<option value="Y" <c:if test="${skvo.getUse_yn() eq 'Y'}">selected="selected"</c:if> >공개</option>
			<option value="N" <c:if test="${skvo.getUse_yn() eq 'N'}">selected="selected"</c:if> >비공개</option>
		</select>
	</p>
	
	<p>기술이름 &nbsp;- <input type="text" value="${skvo.getSkill_name() }" id="skill_name" name="skill_name" class="aboutText w140" /></p>
	<p>기술코드 &nbsp;- <input type="text" value="${skvo.getSkill_id() }" id="skill_id" name="skill_id" class="aboutText w140" /></p>
	<p>숙련도　 &nbsp;- <input type="text" value="${skvo.getPercentage() }" id="percentage" name="percentage" class="aboutText w35" /></p>
	<p>상세내용<textarea rows="4" class="aboutText txtArea" id="detail" name="detail">${skvo.getDetail() }</textarea></p>
	
	<input type="hidden" value="N" id="del_yn" name="del_yn"/>
	<input type="hidden" value="${skvo.getNo()}"  id="no" name="no"/>
</div>
<!-- 보유기술 내용 -->
