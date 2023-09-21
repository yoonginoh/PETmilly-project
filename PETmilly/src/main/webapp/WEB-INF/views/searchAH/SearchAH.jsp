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
	<h1>CSV 파일에서 위도와 경도 추출 및 좌표 변환 예제</h1>
    <div id="map" style="width:500px;height:400px;"></div>
    <h2>가장 가까운 마커 5개</h2>
    <ul id="closestMarkersList"></ul>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a335df683f7e451662ef9f58ffb39b98"></script>
    <script>
        
        Proj4js.defs["EPSG:5174"] = "+proj=tmerc +lat_0=38 +lon_0=127.0028902777778 +k=1 +x_0=200000 +y_0=500000 +ellps=bessel +units=m +no_defs +towgs84=-115.80,474.99,674.11,1.16,-2.31,-1.63,6.43";
        Proj4js.defs["EPSG:4326"] = "+title=NAD83 (long/lat) +proj=longlat +a=6378137.0 +b=6356752.31414036 +ellps=GRS80 +datum=NAD83 +units=degrees";

        var s_srs = new Proj4js.Proj("EPSG:5174");
        var t_srs = new Proj4js.Proj("EPSG:4326");
        var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

        var markers = [];

        var container = document.getElementById('map');
        var options = {
            center: new kakao.maps.LatLng(36.36685, 127.327), // 변경된 좌표로 설정
            level: 3
        };
        var map = new kakao.maps.Map(container, options);

       
	<%@include file="/WEB-INF/inc/footer.jsp" %>
	
</body>
</html>