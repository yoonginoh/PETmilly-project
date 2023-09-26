<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOG & CAT - Not animal, it's PETmilly</title>
</head>
<body>
		<%@include file="/WEB-INF/inc/top.jsp" %>
	 	<section class="page-section" id="contact" style="margin-top: 150px">
            <div class="container">
                <!-- Contact Section Heading-->
                <div class="container">
  					<div class="row">
    					<div class="col-12 text-center">
                			<h1 class="text display-3 mb-5" style="color: #ff4800;"><img src="img/user.jpg" width="100px" height="100px">PETmilly <br> </h1>
                			<h1 class="text display-3 mb-5">로그인</h1>
               			</div>
  					</div>
				</div>
               
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <form method="post" action="<c:url value="/loginDo" />" >
                        <!-- id input -->
                        	<div class="m-0 display-5 text-uppercase text-primary">
                        		<label style="font-size: 24px; font-weight: bold;" >아이디</label>
                        		<input class="form-control" name="memId" type="text" 
                        		   placeholder="아이디를 입력해주세요 " value= "${cookie.rememberId.value }" />
                        		
                        	</div>
                        	<br>
                        <!-- password input -->
                        	<div class="m-0 display-5 text-uppercase text-primary">
                        		<label style="font-size: 24px; font-weight: bold;" >비밀번호</label>
                        		<input class="form-control" name="memPw" type="password" 
                        		   placeholder="비밀번호를 입력해주세요 ">
                     
                        	</div>
                        	<br>
                        	
                        <!-- password remember -->
                        	<div class="m-0 display-5 text-uppercase text-primary" text-align:center>
                        		<div class="m-0 display-5 text-uppercase text-primary" style="text-align: center;">
    								<input class="form-check-input" id="remember" name="remember" type="checkbox" ${cookie.rememberId.value == null ? '' : 'checked'} />
   									 아이디 기억하기
								</div>
                        	<br>
                     		<button class="btn btn-primary btn-xl" type="submit"> 확인 </button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
		<%@include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>