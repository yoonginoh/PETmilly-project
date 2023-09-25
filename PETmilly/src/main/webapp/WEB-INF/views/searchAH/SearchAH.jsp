<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOG & CAT - Not animal, it's PETmilly</title>
<style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }
    .text {
        text-align: center;
        margin-top: 20px; /* 동물 병원 / 약국 찾기 텍스트 위쪽 여백 설정 */
        font-size: 36px;
    }
    /* 추가 스타일 */
    #info {
        float: right;
        width: 750px;
        height: 600px;
        padding: 100px 0;
        border: 1px solid #ccc;
        background-color: #f9f9f9;
        text-align: center;
    }
    .map {
        float: left;
        width: 750px;
        height: 600px;
        padding: 10px;
        border: 1px solid #ccc;
        background-color: #f9f9f9;
    }
    #searchResults {
        float: left;
        width: 250px;
        padding: 10px;
        border: 1px solid #ccc;
        background-color: #f9f9f9;
    }
    .searchItem {
        cursor: pointer;
        margin-bottom: 10px;
    }
</style>
</head>
<body>

<%@include file="/WEB-INF/inc/top.jsp"%>
<div class="container">
    <h1 class="text display-3 mb-5" style="color: #ff4800;"><img src="img/user.jpg" width="100px" height="100px">PETmilly <br> </h1>
    <h1 class="text display-3 mb-5">동물 병원 / 약국 찾기</h1>
    <div class="mx-auto" style="width: 100%; max-width: 600px;">
        <div class="input-group">
            <input type="text" class="form-control border-light" style="padding: 30px;" placeholder="지역명,병원명을 입력해주세요" id="search">
            <div class="input-group-append">
                <button class="btn btn-primary px-3" onclick="searchMarkers()">검색</button>
            </div> 
        </div>
        <div id="searchResults"></div>
        <div class="autocomplete"></div>
    </div>
</div>
<!-- 정보를 표시할 div 엘리먼트 -->
<div id="info">
    <h2>병원 정보</h2>
    <br>
    <p><strong>이름:</strong> <span id="infoName"></span></p>
    <p><strong>주소:</strong> <span id="infoAddress"></span></p>
    <p><strong>전화번호:</strong> <span id="infoPhonenumber"></span></p>
    <a href=""></a>
</div>
<button class="btn btn-primary px-3" onclick="showAllMarkers()">모든 마커 표시</button>
<div id="map" style="width:750px;height:600px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a335df683f7e451662ef9f58ffb39b98"></script>
<script>
    var container = document.getElementById('map');
    var options = {
        center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울 중심 좌표
        level: 3
    };

    var map = new kakao.maps.Map(container, options);
    var positions = [
        <c:forEach items="${searchList}" var="AHList" varStatus="status">
            {
                title: '${AHList.AHName}',
                latlng: new kakao.maps.LatLng(${AHList.latitude}, ${AHList.longitude}),
                address: '${AHList.AHAddress}',
                phonenumber: '${AHList.AHPhonenm}'
            }<c:if test="${!status.last}">,</c:if>
        </c:forEach>
    ];

    // 마커 배열을 생성
    var markers = [];

    // 정보를 업데이트하는 함수
    function updateInfo(name, address, phonenumber) {
        document.getElementById('infoName').textContent = name;
        document.getElementById('infoAddress').textContent = address;
        document.getElementById('infoPhonenumber').textContent = phonenumber;
    }

    // 마커를 생성하고 정보를 저장하며 이벤트 리스너를 추가하는 함수
    function createMarker(map, latlng, AHname, address, phonenumber) {
        var marker = new kakao.maps.Marker({
            map: map, // 마커를 표시할 지도
            position: latlng, // 마커를 표시할 위치
            title: AHname, // 마커의 타이틀로 상호명 설정
            address: address,
            phonenumber: phonenumber
        });

        // 마커에 클릭 이벤트 리스너 추가
        kakao.maps.event.addListener(marker, 'click', function () {
            // 마커를 클릭하면 해당 마커의 좌표로 지도 이동
            map.panTo(latlng);

            // 정보 업데이트
            updateInfo(AHname, address, phonenumber);
        });

        marker.setMap(map);

        // 마커를 배열에 저장
        markers.push(marker);
    }

    // 검색 결과 목록에 마커를 추가하는 함수
    function addToSearchResults(AHname, latlng) {
        var searchResults = document.getElementById('searchResults');
        var listItem = document.createElement('div');
        listItem.className = 'searchItem';
        listItem.textContent = AHname;
        listItem.addEventListener('click', function () {
            // 검색 결과 목록에서 항목 클릭 시 해당 마커로 지도 이동
            map.panTo(latlng);
        });
        searchResults.appendChild(listItem);
    }

    // 검색 함수
    function searchMarkers() {
        var searchInput = document.getElementById('search').value.toLowerCase();
        var matchingMarkers = [];

        // 검색어와 일치하는 마커 찾기
        for (var i = 0; i < positions.length; i++) {
            var markerTitle = positions[i].title.toLowerCase();
            if (markerTitle.indexOf(searchInput) !== -1) {
                matchingMarkers.push(positions[i]);
            }
        }

        // 검색 결과 목록 초기화
        var searchResults = document.getElementById('searchResults');
        searchResults.innerHTML = '';

        // 검색 결과를 지도에 표시하고 목록에 추가
        for (var i = 0; i < matchingMarkers.length; i++) {
            createMarker(map, matchingMarkers[i].latlng, matchingMarkers[i].title, matchingMarkers[i].address, matchingMarkers[i].phonenumber);
            addToSearchResults(matchingMarkers[i].title, matchingMarkers[i].latlng);
        }
    }
    function showAllMarkers() {
        // 모든 마커를 지도에 표시
        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(map);
        }
    }
    const dataList = positions.map(function(marker) {
        return marker.title;
        
    });
	
    console.log (dataList);
    const $search = document.querySelector("#search");
    const $autoComplete = document.querySelector(".autocomplete");

    let nowIndex = 0;

    $search.onkeyup = (event) => {
        const value = $search.value.trim();
        const matchDataList = value
            ? dataList.filter((label) => label.includes(value))
            : [];
        switch (event.keyCode) {

            // up key
            case 38:
                nowIndex = Math.max(nowIndex - 1, 0);
                break;

            // DownKey
            case 40:
                nowIndex = Math.min(nowIndex + 1, matchDataList.length - 1);
                break;
            case 13:
                document.querySelector("#search").value = matchDataList[nowIndex] || "";

                // 초기화
                nowIndex = 0;
                matchDataList.length = 0;
                break;

            // 그외 입력은 초기화
            default:
                nowIndex = 0;
                break;
        }

        // 리스트 보여주기
        showList(matchDataList, value, nowIndex);
    };
    const showList = (data, value, nowIndex) => {
        // 정규식으로 변환
        const regex = new RegExp(`(${value})`, "g");

        $autoComplete.innerHTML = data
            .map(
                (label, index) => `
                <div class='${nowIndex == index ? "active" : ""}'>
                    ${label.replace(regex, "<mark>$1</mark>")}
                </div>
            `
            )
            .join("");
    };
 
</script>

<%@include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>
