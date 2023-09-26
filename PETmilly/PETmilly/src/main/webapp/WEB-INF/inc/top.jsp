<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"?></script>

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
    
	 <!-- Topbar Start -->
    <div class="container-fluid bg-dark">
        <div class="row py-2 px-lg-5">
            <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center text-white">
                    <small><i class="fa fa-phone-alt mr-2"></i>010 7143 2362</small>
                    <small class="px-3">|</small>
                    <small><i class="fa fa-envelope mr-2"></i>nyg9311@gmail.com</small>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-white px-2" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-white pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-lg-5">
            <a href="${pageContext.request.contextPath}" class="navbar-brand ml-lg-3">
                <h1 class="m-0 display-5 text-uppercase text-primary"><img src="img/user.jpg" width="50px" height="50px"> PETmilly</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav m-auto py-0">
                    <a href="${pageContext.request.contextPath}" class="nav-item nav-link">PETmilly</a>
<!--                     <a href="about.html" class="nav-item nav-link">브랜드스토리</a> -->
                    <a href="about.html" class="nav-item nav-link">진료비 확인하기</a>
                    <a href="${pageContext.request.contextPath}/SearchAH" class="nav-item nav-link">동물병원 검색</a>
                    <a href="${pageContext.request.contextPath}/Disease" class="nav-item nav-link">증상별 질병 검색</a>
                    
<!--                     <div class="nav-item dropdown"> -->
<!--                         <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">PET이야기</a> -->
<!--                         <div class="dropdown-menu rounded-0 m-0"> -->
<!--                             <a href="blog.html" class="dropdown-item">Blog Grid</a> -->
<!--                             <a href="single.html" class="dropdown-item">Blog Detail</a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <a href="contact.html" class="nav-item nav-link">더 가까이</a> -->
                    
                    <a href="${pageContext.request.contextPath}/ReviewboardView"class="nav-item nav-link">리뷰 게시판</a>
         
                 <%--    <a href="${pageContext.request.contextPath}/registView" class="nav-item nav-link">회원가입</a>
                    <a href="${pageContext.request.contextPath}/loginView" class="nav-item nav-link">로그인</a> --%>
                 <c:if test="${sessionScope.login == null}">
                    <a href="${pageContext.request.contextPath}/registView" class="nav-item nav-link">회원가입</a>
                    <a href="${pageContext.request.contextPath}/loginView" class="nav-item nav-link">로그인</a>
<!-- 					<li class="nav-item mx-0 mx-lg-1"><a -->
<!-- 						class="nav-link py-3 px-0 px-lg-3 rounded" -->
<%-- 						href="${pageContext.request.contextPath}/loginView">로그인</a></li> --%>
<!-- 					<li class="nav-item mx-0 mx-lg-1"><a -->
<!-- 						class="nav-link py-3 px-0 px-lg-3 rounded" -->
<%-- 						href="${pageContext.request.contextPath}/registView">회원가입</a></li> --%>
				 </c:if>
				 <c:if test="${sessionScope.login != null}">
					<a href="${pageContext.request.contextPath }/mypage" class="nav-item nav-link" >
							${sessionScope.login.memId}님 </a>
					<a href="${pageContext.request.contextPath}/logoutDo" class="nav-item nav-link" >로그아웃</a>
				</c:if>
                </div>
                <!-- <a href="" class="btn btn-primary py-2 px-4 d-none d-lg-block">진료비 확인하러가기</a> -->
            </div>
        </nav>
    </div>
    <!-- Navbar End -->
