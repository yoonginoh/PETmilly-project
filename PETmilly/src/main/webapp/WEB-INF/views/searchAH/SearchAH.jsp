<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOG & CAT - Not animal, it's PETmilly</title>
<style>
    .text {
        text-align: center;
        margin-top: 20px; /* 동물 병원 / 약국 찾기 텍스트 위쪽 여백 설정 */
        font-size: 36px;
    }
</style>
</head>
<body>
    <%@include file="/WEB-INF/inc/top.jsp" %>

    	<h1 class="text display-3 mb-5" style="color: #ff4800;"><img src="img/user.jpg" width="100px" height="100px">PETmilly <br> </h1>
        <h1 class="text display-3 mb-5">동물 병원 / 약국 찾기</h1>
      	<div class="mx-auto" style="width: 100%; max-width: 600px;">
      	<div class="input-group">
      	
                    <input type="text" class="form-control border-light" style="padding: 30px;" placeholder="지역명,병원명을 입력해주세요">
                    <div class="input-group-append">
                        <button class="btn btn-primary px-3">검색</button>
                    </div>
                    </div>
                    
          </div>
    <div id="map" style="width:500px;height:400px;"></div>
    

    <table class="table table-hover">
				<thead>
					<tr>
						<th>병원이름</th>
						<th>병원주소</th>
						<th>전화번호</th>
						<th>위도</th>
						<th>경도</th>
					</tr>
				</thead>
				<tbody>
					<!-- 데이터의 수만큼 반복되는 부분 -->
					<c:forEach items="${searchList }" var="AHList">
						<tr>
							<td>${AHList.AHName}</td>
							<td>${AHList.AHAddress}</td>
							<td>${AHList.AHPhonenm}</td>
							<td>${AHList.longitude}</td>
							<td>${AHList.latitude}</td>
						</tr>
					</c:forEach>
				</tbody>
	</table>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ceb98607c12a2a0afd27b9d04547e20d"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
	

    <%@include file="/WEB-INF/inc/footer.jsp" %>

</body>
</html>