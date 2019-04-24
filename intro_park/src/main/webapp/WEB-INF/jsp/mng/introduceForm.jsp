<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 자기소개 내용 -->
<div id="introduceDiv" class="introduceDiv itd">
	<c:if test="${status.count ne null }">
		<div align="right" class="">
			<button type="button" class="adminSaveBtn" id="introSaveBtn_${status.count - 1}" onclick="introSaveBtn(this);" value="<c:url value='/mng/introduceSave'/>" >저장&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span></button>
			<button type="button" class="adminSaveBtn" id="introDelBtn_${status.count - 1}" onclick="introDelBtn(this);" value="<c:url value='/mng/introduceDel'/>" >삭제&nbsp;<span class="glyphicon glyphicon-remove-sign"></span></button>
		</div>
	</c:if>
	
	<p>정렬순서&nbsp;- <input type="text" value="${invo.getList_order() }" id="list_order" name="list_order" class="aboutText w50" /></p>
	<p>공개여부&nbsp;- 
		<select class="aboutText w65" id="use_yn" name="use_yn">
			<option value="" <c:if test="${invo.getUse_yn() eq null}">selected="selected"</c:if> >선택</option>
			<option value="Y" <c:if test="${invo.getUse_yn() eq 'Y'}">selected="selected"</c:if> >공개</option>
			<option value="N" <c:if test="${invo.getUse_yn() eq 'N'}">selected="selected"</c:if> >비공개</option>
		</select>
	</p>
	
	<p>질문내용 &nbsp;- <input type="text" value="${invo.getTitle() }" id="title" name="title" class="aboutText w350" /></p>
	<p>소개내용 &nbsp;- <input type="text" value="${invo.getSub_title() }" id="sub_title" name="sub_title" class="aboutText w350" /></p>
	<p>내용<textarea rows="8" class="aboutText txtArea" id="introduce" name="introduce">${invo.getIntroduce() }</textarea></p>
	

	<input type="hidden" value="N" id="del_yn" name="del_yn"/>
	<input type="hidden" value="${invo.getNo()}"  id="no" name="no"/>
</div>
<!-- 자기소개 내용 -->
