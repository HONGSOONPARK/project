<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <section id="resume" name="resume">
    <!--EDUCATION DESCRIPTION -->
    <div class="container desc">
      <div class="row">

        <div class="col-lg-2 col-lg-offset-1">
          <h5>교육과정</h5>
        </div>
		<c:choose>
			<c:when test="${fn:length(educationvo) > 0 }">
				<c:forEach var="educationvo" items="${educationvo }" varStatus="status">
				<c:if test="${status.count eq 1 }">
					<div class="col-lg-6">
				</c:if>
				<c:if test="${status.count > 1 }">
					<div class="col-lg-6 col-lg-offset-3">
				</c:if>
			          <p>
			            <t>${educationvo.getName() }</t><br/>${educationvo.getType()}<br/>
			            <i>${educationvo.getDetail()}</i>
			          </p>
			        </div>
			        <div class="col-lg-3">
			          <p>
			            <sm>${educationvo.getStart_date()} ~ ${educationvo.getEnd_date()}</sm><br/>
			            <imp>
			              <sm>${educationvo.getStatus()}</sm>
			            </imp>
			          </p>
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
      <br>
      <hr>
    </div>
    

  <!--WORK DESCRIPTION -->
	<div id="section-work" class="container desc">
	<div class="row">

		<div class="col-lg-2 col-lg-offset-1">
			<h5>경력사항</h5>
		</div>
      
		<c:choose>
			<c:when test="${fn:length(careervo) > 0 }">
				<c:forEach var="careervo" items="${careervo }" varStatus="status">
				<c:if test="${status.count eq 1 }">
					<div class="col-lg-6">
				</c:if>
				<c:if test="${status.count > 1 }">
					<div class="col-lg-6 col-lg-offset-3">
					<hr/>
				</c:if>
				        <p>
				          <t>${careervo.getName() }</t><br/>
				          <t>${careervo.getType() }</t><br/>
				          <i>${careervo.getDetail() }</i><br/>
				        </p>
						<c:forEach var="careerdetailvo" items="${careerdetailvo }" varStatus="status2">
							<c:if test="${careerdetailvo.getRef_no() eq careervo.getNo() }">
								<ul id="nav" class="nav">
									<span><i class="glyphicon glyphicon-folder-close"></i> 
				        				${careerdetailvo.getProject_name() }		
				        			</span>
									<more>
										<li class="career_list">${careerdetailvo.getProject_detail() }</li>
									</more>
								</ul>
        						<br/><br/>
							</c:if>
						</c:forEach>					
					</div>
					
					<div class="col-lg-3">
						<p>
							<sm>${careervo.getStart_date() } ~ ${careervo.getEnd_date() }</sm><br/>
							<imp>
								<sm>${careervo.getStatus() }</sm>
							</imp>
						</p>
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
      
    <!--/.row -->
    <br/>
    <hr>
	</div>
	</div>
  <!--/.container -->
</section>

 