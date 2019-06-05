<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="headerwrap">
	<div class="container" style="width: 100%">
    	<div class="row centered">
        	<h1>${aboutvo.getTitle() }</h1>
       	 	<h3>${aboutvo.getSub_title() }</h3>
    	</div>
  	</div>
</div>



<section id="about" name="about">
<div id="intro">
	<div class="container">
		<div class="row">
		
			<div class="col-lg-2 col-lg-offset-1">
				<h5>${aboutvo.getCategory() }</h5>
			</div>
			<div id="int" class="col-lg-6">
				<p>${aboutvo.getIntroduce() }</p>
			</div>
			
			<p><a href="#"><i class="icon-file"></i></a>
				<sm><a href="#introduce" class="" data-toggle="modal">자기소개서 열람</a>  &nbsp;<span class="glyphicon glyphicon-search"></span></sm>
			</p>
			<p><a href="#"><i class="icon-file"></i></a>
				<sm><a href="<c:url value='/resources/박홍순_포트폴리오.pdf'/> ">포트폴리오 다운</a>  &nbsp;<span class="glyphicon glyphicon-search"></span></sm>
			</p>
			
		</div>
		
		<!-- 자기소개 모달 -->
		<div id="introduce" class="modal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">자기소개서<a href="<c:url value='/resources/박홍순_자기소개서.pdf'/> "><small>( pdf&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span> )</small></a></h4>
<%-- 						<h4 class="modal-title">자기소개서<a href="<c:url value='/mng/introduce/pdf'/> "><small>( pdf&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span> )</small></a></h4> --%>

<!-- 						<h4 class="modal-title">자기소개서<a href="javascript:pdfDown();"><small>( pdf&nbsp;<span class="glyphicon glyphicon-floppy-disk"></span> )</small></a></h4> -->
					</div>
					
					<div id="introModalBody" class="modal-body">
						<c:choose>
							<c:when test="${fn:length(introducevo) > 0 }">
								<c:forEach var="list" items="${introducevo }" varStatus="status">
									<p><span> > ${list.getTitle() } </span></p>
									<p><strong>"${list.getSub_title() }"</strong></p>
						  		<p>${list.getIntroduce() }</p>
						  		<hr/>
								</c:forEach>
							</c:when>
							<c:otherwise>
							<div align="center">
								<h3>등록된 자기소개가 없습니다.</h3>
							</div>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 자기소개 모달 -->
		
		
	</div>
</div>

</section>


 