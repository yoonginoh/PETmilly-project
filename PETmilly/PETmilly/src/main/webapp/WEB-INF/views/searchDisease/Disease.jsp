
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"></script>
    <script>
       $(document).ready(function(){
    $("#q1_id input").click(function(){
        // q1-1 체크박스가 선택되었을 때
        if($("#q1-1").is(":checked")){
            $("#q3_id").hide("slow");
        } else {
            $("#q3_id").show("slow");
        }
        
        // q1-2 체크박스가 선택되었을 때
        if($("#q1-2").is(":checked")){
            $("#q2_id").hide("slow");
        } else {
            $("#q2_id").show("slow");
        }
    });
});

       $("#myForm").submit(function(e) {
           // 폼이 제출될 때 페이지 새로고침을 막음
           e.preventDefault();

           // q1과 q2의 값을 가져와서 콘솔에 출력
           var q1Value = $("input[name='q1']:checked").val();
           var q2Value = $("input[name='q2']:checked").val();

           console.log("q1의 값: " + q1Value);
           console.log("q2의 값: " + q2Value);


           // 페이지 이동 코드 추가
           window.location.href = "${pageContext.request.contextPath}/ResultDisease";
       });
   			
    </script>
</head>
<body>
	 <%@include file="/WEB-INF/inc/top.jsp"%>
    <div class="container">
        <div class="row">
            <h1>증상별 질병 검색</h1>
            <hr>
        </div>
        <div class="row">
               <form action="${pageContext.request.contextPath}/ResultDisease" method="post" id="myForm">
                    <div class="card-body bg-light"></div>
                        <div class="tab-content">
                            <div class="row" id="q1_id">
                                <!-- 1번질문 -->
                                <div class="col-sm-6">
                                    <label for="" class="form-label">1.종류가 뭔가요</label>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="q1-1" name="q1" value="D">
                                        <label for="q1-1" class="form-check-label">강아지</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="q1-2" name="q1" value="C"> 
                                        <!-- 둘중 하나가 선택되는거라 이름이 같아야하고 아이디는 달라야한다. -->
                                        <label for="q1-2" class="form-check-label">고양이</label>
                                    </div>
                                </div>
                                <hr>
                            <div class="row" id="q2_id">
                                <!-- 2번질문 -->
                                <div class="col-sm-6">
                                    <label for="" class="form-label">2.다음 중 어디에 이상이 있나요?</label>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="q2-1" name="q2" value="1">
                                        <label for="q2-1" class="form-check-label">눈 이상</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="q2-2" name="q2" value="2">
                                        <label for="q2-2" class="form-check-label">행동 이상</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="q2-3" name="q2" value="3"> 
                                        <!-- 둘중 하나가 선택되는거라 이름이 같아야하고 아이디는 달라야한다. -->
                                        <label for="q2-3" class="form-check-label">코 이상</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="q2-4" name="q2" value="4">
                                        <label for="q2-4" class="form-check-label">음식 섭취 이상</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="q2-5" name="q2" value="5">
                                        <label for="q2-5" class="form-check-label">다리 이상</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" class="form-check-input" id="q2-6" name="q2" value="6">
                                        <label for="q2-6" class="form-check-label">숨소리 이상</label>
                                    </div>
                                </div>
                             </div>
                            <hr>
                            <div class="row" id="q3_id">
                                <div class="col-sm-6">
                                    <label for="" class="form-label">3.다음 중 어디에 이상이 있나요?</label>
                                    <div class="col-sm-6">
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="q3-1" name="q3" value="1">
                                            <label for="q3-1" class="form-check-label">위 이상</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="q3-2" name="q3" value="2">
                                            <label for="q3-2" class="form-check-label">다리 이상</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="q3-3" name="q3" value="3">
                                            <label for="q3-3" class="form-check-label">장 이상</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="q3-4" name="q3" value="4">
                                            <label for="q3-4" class="form-check-label">피부 이상</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="q3-5" name="q3" value="5">
                                            <label for="q3-5" class="form-check-label">눈 이상</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="q3-6" name="q3" value="6">
                                            <label for="q3-6" class="form-check-label">숨소리 이상</label>
                                        </div>
                                    </div>
                                </div>
                           </div>
                        <hr>
                        <button id="btn" type="submit" class="w-100 btn btn-primary btm-lg">제출</button>
                </form>
            </div>
        </div>

     <%@include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>