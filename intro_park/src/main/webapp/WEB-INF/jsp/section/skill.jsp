<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <!--SKILLS DESCRIPTION -->
	<div id="skillswrap">
		<div class="container">
			<div id="skillRow" class="row">
		    	<div class="col-lg-2 col-lg-offset-1">
		      		<h5>보유기술</h5>
<!-- 		      		<p style="font-size:11px;">(스킬 선택시 상세보기)</p> -->
		   		 </div>
 				<!-- value = 숙련도  -->
				<c:choose>
					<c:when test="${fn:length(skillvo) > 0 }">
						<c:forEach var="skvo" items="${skillvo }" varStatus="status">
						<c:choose>		
							<c:when test="${(status.count -1) % 4 eq 0 && status.count ne 1 }">	
								<div class="col-lg-2 col-lg-offset-3 centered">
							</c:when>
							<c:otherwise>
								<div class="col-lg-2 centered">
							</c:otherwise>
						</c:choose>
								<a href="#skillDetail_${skvo.getSkill_id()}" class="" data-toggle="modal">
									<canvas id="${skvo.getSkill_id() }" height="100" width="100" value="${skvo.getPercentage() }"></canvas>
								</a>
								<p>${skvo.getSkill_name() }</p>
								<br>
						    </div>		
						    
							   <!-- 스킬 상세보기  Modal  -->
							 <div id="skillDetail_${skvo.getSkill_id() }" class="modal">
							   <div class="modal-dialog" >
							        <div id="skillModal" class="modal-content">
										<div class="modal-header">
										     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										     <h4 class="modal-title">${ skvo.getSkill_name()}</h4>
										</div>
										<div id="modal-body" class="modal-body">
											<p>${skvo.getDetail() }</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
										</div>
							        </div>
							   </div>
							</div>
							<!-- 스킬 상세보기  Modal -->
						    			
						</c:forEach>
					</c:when>
					<c:otherwise>
					<div align="center">
						<h3>등록된 보유기술이 없습니다.</h3>
					</div>
					</c:otherwise>
				</c:choose>
		
		  	</div>
		  <!--/.row -->
		  <br>
		</div>
		<!--/.container -->
	</div>
	  <!--/ #skillswrap -->


