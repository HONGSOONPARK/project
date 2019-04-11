<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div id="portfolioDiv" class="portfolioDiv pfd">

	<c:if test="${status.count ne null }">
		<div align="right" class="">
			<button type="button" class="pfBtn" id="pfSaveBtn_${status.count - 1}" onclick="pfSaveBtn(this);" value="<c:url value='/mng/pfSave'/>" >저장&nbsp;<span class="glyphicon glyphicon-floppy-disk"></button>
			<button type="button" class="pfBtn" id="pfDelBtn_${status.count - 1}" onclick="pfDelBtn(this);" value="<c:url value='/mng/pfDel'/>" >삭제&nbsp;<span class="glyphicon glyphicon-remove-sign"></button>
		</div>
	</c:if>
	
	<!-- 포트폴리오 이미지 -->
	<div class="col-lg-6">
		<div class="ih-item square effect13 top_to_bottom">
			<a href="javascript:fileUploads(<c:if test="${status.count eq null}">${fn:length(pfvo)+1}</c:if><c:if test="${status.count ne null }">${status.count-1}</c:if>)" id="uploadLink">
				<div id="imgDiv" class="img">
					<c:choose>
						<c:when test="${list.getFile_stored_name() eq null}">
							<img class="img-responsive" src="<c:url value='/resources/bootstrap/kelvin/img/noimage.jpg'/>" alt="프로젝트 이미지" title="프로젝트 이미지">
						</c:when>
						<c:otherwise>
							<img class="img-responsive" src="<c:url value='/uploads/portfolio/${list.getFile_stored_name()}'/>" alt="${list.getProject_title() }" title="${list.getFile_explain()}">
						</c:otherwise>
					</c:choose>
				</div>
				<div class="info">
					<h3>이미지 업로드</h3>
					<p>클릭</p>
				</div>
			</a>
		</div>
		<input type="file" <c:if test="${status.count eq null}">id="file_${fn:length(pfvo)+1}"</c:if><c:if test="${status.count ne null }">id="file_${status.count-1 }"</c:if> name="files" onchange="filenameView(this)" class="portfolioText hidden"/>
		<div id="pr_p">
<!-- 			<p> -->
<!-- 				img-title &nbsp;-  -->
<%-- 				<input type="text" value="${list.getFile_explain()}" class="portfolioText w320" id="file_explain" name="file_explain"/> --%>
<!-- 			</p> -->
			<p>
				이미지 클릭시 url &nbsp;- 
				<input type="text" value="${list.getEtc1()}" class="portfolioText w320" id="etc1" name="etc1"/>
			</p>
		</div>
		<div <c:if test="${status.count eq null}">id="fileDiv_${fn:length(pfvo)+1}"</c:if><c:if test="${status.count ne null }">id="fileDiv_${status.count-1 }"</c:if>>
		</div>
	</div>
	<!-- 포트폴리오 이미지 -->
	
	<!-- 포트폴리오 내용 -->
	<div id="pr_p" class="col-lg-3">
		<input type="hidden" value="${list.getNo()}" class="portfolioText" id="no" name="no" /> 
		<p>
			공개여부 &nbsp;- 
			<select class="portfolioText w65" id="use_yn" name="use_yn">
				<option value="" <c:if test="${list.getUse_yn() eq null}">selected="selected"</c:if> >선택</option>
				<option value="Y" <c:if test="${list.getUse_yn() eq 'Y'}">selected="selected"</c:if> >공개</option>
				<option value="N" <c:if test="${list.getUse_yn() eq 'N'}">selected="selected"</c:if> >비공개</option>
			</select> 
			&nbsp;
			유형구분 &nbsp;- 
			<select class="portfolioText w65" id="category" name="category">
				<option value="" <c:if test="${list.getCategory() eq null}">selected="selected"</c:if> >선택</option>
				<option value="학부" <c:if test="${list.getCategory() eq '학부'}">selected="selected"</c:if> >학부</option>
				<option value="경력" <c:if test="${list.getCategory() eq '경력'}">selected="selected"</c:if> >경력</option>
				<option value="개인" <c:if test="${list.getCategory() eq '개인'}">selected="selected"</c:if> >개인</option>
			</select> 
		</p>
		<p>
			정렬순서 &nbsp;- 
			<input type="text" value="${list.getList_order()}" id="list_order" name="list_order" class="portfolioText w50" />
		</p>
		<p>
			회사소속 &nbsp;- 
			<input type="text" value="${list.getCorp()}" id="corp" name="corp" class="portfolioText w150"/>
		</p>
		<p>
			프로젝트 &nbsp;- 
			<input type="text" value="${list.getProject_title()}" id="project_title" name="project_title" class="portfolioText w320"/>
		</p>
		<p>
			간략소개 &nbsp;- 
			<input type="text" value="${list.getProject_intro()}" id="project_intro" name="project_intro" class="portfolioText w320"/>
		</p>
		<p>수행기간 &nbsp;- </p>
		<p>
			<input type="text" value="${list.getStart_date()}" id="start_date" name="start_date" class="portfolioText w100"/> 
			~ 
			<input type="text" value="${list.getEnd_date()}" id="end_date" name="end_date" class="portfolioText w100"/> &nbsp;
		</p>
		<p>수행내용</p>
		<p>
			<textarea rows="6" cols="50" class="portfolioTextArea" id="contents" name="contents">${list.getContents()}</textarea>
		</p>
		<p>성과</p>
		<p>
			<textarea rows="5" cols="50" class="portfolioTextArea" id="result" name="result">${list.getResult()}</textarea>						
		</p>
	</div>
	
<%-- 	<c:if test="${status.count eq null}"><input type="hidden" value="INSERT" name="status" /></c:if> --%>
<%-- 	<c:if test="${status.count ne null}"><input type="hidden" value="UPDATE" name="status" /></c:if> --%>
		<input type="hidden" value="N" id="del_yn" name="del_yn"/>
		<input type="hidden" value="${list.getFile_no()}" id="file_no" name="file_no"/>
		<input type="hidden" value="${list.getRef_no()}"  id="ref_no" name="ref_no"/>
		<input type="hidden" value="${list.getFile_stored_name()}"  id="file_stored_name" name="file_stored_name"/>
		<input type="hidden" value="${list.getFile_original_name()}" id="file_original_name"  name="file_original_name"/>
	</div>
	<!-- 포트폴리오 내용 -->
