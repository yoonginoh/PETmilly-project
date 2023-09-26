<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>검색 결과</title>
</head>
<body>
    <%@include file="/WEB-INF/inc/top.jsp"%>

    <h3>검색 결과</h3>

    <!-- 검색 결과를 표시하는 부분 -->
    <table>
        <thead>
            <tr>
				<th>번호</th>
				<th>병원이름</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>		
			</tr>
        </thead>
        <tbody>
            <!-- 검색 결과를 반복해서 표시 -->
            <c:forEach items="${searchResults}" var="result">
               <tr>
					<td>${reviewboard.reviewboardNo}</td>
					<td>${reviewboard.reviewboardAHName }
					<td><a href="<c:url value="/boardDetailView?boardNo=${reviewboard.reviewboardNo}"/>">${reviewboard.reviewboardTitle} </a> </td>						
					<td>${reviewboard.memNm }</td>
					<td>${reviewboard.createDate}</td>
				</tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- 다른 내용 추가 -->

    <%@include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>
