<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"></script>

</head>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	 <div class="container">
            <div class="row align-items-center">
				<h3> 세균성 안감염 </h3>
				<br>
				<h5>세균성 안감염은 눈꺼풀에 염증이 생겨 붉어지고 부어오를 증상을 등반합니다. 세균성 감염에 의해 주로 발병되고 반려견이 간지러움으로 인한 스트레스를 많이 받을 수 있으므로 빠른 병원 내원이 필요합니다. </h5>
	 			<img src="${pageContext.request.contextPath}/img/D1B.jpg" alt="">
	 		</div>
	 </div>
	
	<%@include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>