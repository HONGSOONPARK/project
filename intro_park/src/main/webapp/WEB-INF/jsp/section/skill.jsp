<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <!--SKILLS DESCRIPTION -->
	<div id="skillswrap">
		<div class="container">
			<div id="skillRow" class="row">
		    	<div class="col-lg-2 col-lg-offset-1">
		      		<h5>보유기술</h5>
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
								<canvas id="${skvo.getSkill_id() }" height="100" width="100" value="${skvo.getPercentage() }"></canvas>
								<p>${skvo.getSkill_name() }</p>
								<br>
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
		  <!--/.row -->
		  <br>
		</div>
		<!--/.container -->
	</div>
	  <!--/ #skillswrap -->

