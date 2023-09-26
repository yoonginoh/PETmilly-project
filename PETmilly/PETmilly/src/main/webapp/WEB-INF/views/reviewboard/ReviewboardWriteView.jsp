<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>글쓰기</title>
    </head>
    <body id="page-top">
        <!-- 모든 페이지 상단에 들어가는 부분 -->
        <%@include file="/WEB-INF/inc/top.jsp"%>
       
        <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container" style="margin-top: 100px;">
                <!-- Contact Section Heading-->
                <h3 class="text display-3 mb-5" style="color: #ff4800; text-align: center;">리뷰 작성</h3>

                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <form action="<c:url value="/reviewboardWriteDo" />" method="post">
                            <!-- title input-->
                            <div class="mb-3">
                                <label for="AHName">동물병원명</label>
                                <input class="form-control" id="AHName" name="reviewboardAHName" type="text" />
                            </div>
                            <div class="mb-3">
                                <label for="title">제목</label>
                                <input class="form-control" id="title" name="reviewboardTitle" type="text" />
                            </div>
                            <!-- content input-->
                            <div class="mb-3">
                            	<label for="content">내용</label>
                                <textarea class="form-control" name="reviewboardContent" style="height: 20rem"></textarea>
                            </div>
                            <!-- Submit Button-->
                            <button class="btn btn-primary btn-xl" type="submit">등록</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <!-- 모든 페이지 하단에 들어가는 부분 -->
        <!-- Footer-->
        <%@include file="/WEB-INF/inc/footer.jsp"%>
    </body>
</html>