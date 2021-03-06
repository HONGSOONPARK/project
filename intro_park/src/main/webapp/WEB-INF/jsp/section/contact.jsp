<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <section id="contact" name="contact">
    <!--FOOTER DESCRIPTION -->
    <div id="footwrap">
      <div class="container">
        <div class="row">

          <div class="col-lg-2">
            <h5>연락처</h5>
          </div>
          <div class="col-lg-4">
            <p>
              <t>Email</t><br/> phs39@naver.com <br/>
            </p>
            <p>
              <t>Address</t><br/> 충청북도 <br/> 청주시 흥덕구 가경동 <br/>
            </p>
            <p>
              <t>Phone</t><br/> +82 10-4123-2517 <br/>
            </p>
            <p>
              <t>Social Links</t><br/>
              <a href="https://github.com/HONGSOONPARK/"><i class="fa fa-github-square"></i></a>
              <a href="https://www.facebook.com/people/%EB%B0%95%ED%99%8D%EC%88%9C/100000494146947"><i class="fa fa-facebook"></i></a>
            </p>
          </div>
          <div class="col-lg-6">
            <p>
              <sm>CONTACT FORM</sm>
            </p>
            <form class="contact-form php-mail-form" role="form" action="<c:url value='/contact'/>" method="POST">

              <div class="form-group">
                <label for="contact-name">이름</label>
                <input type="name" id="name" name="name" class="form-control" id="contact-name" placeholder="Your Name" data-rule="minlen:2" data-msg="Please enter at least 2 chars">
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <label for="contact-email">Email</label>
                <input type="email" id="email" name="email"  class="form-control" id="contact-email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email">
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <label for="contact-subject">제목</label>
                <input type="text" id="subject" name="subject" class="form-control" id="contact-subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject">
                <div class="validate"></div>
              </div>

              <div class="form-group">
                <label for="contact-message">내용</label>
                <textarea class="form-control" id="message" name="message" id="contact-message" placeholder="Your Message" rows="5" data-rule="required" data-msg="Please write something for us"></textarea>
                <div class="validate"></div>
              </div>

              <div class="loading"></div>
              <div class="error-message"></div>
              <div class="sent-message">전송이 완료되었습니다. 감사합니다!</div>

              <div class="form-send">
                <button type="submit" class="btn btn-large">전송</button>
              </div>

            </form>

          </div>
        </div>
        <!--/.row -->
      </div>
      <!--/.container -->
    </div>
    <!--/ #footer -->
  </section>
