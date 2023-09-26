<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>증상별 질병 검색 결과</title>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"></script>
<script>
	$(document)
			.ready(
					function() {
						$("#d2_id").hide();
						$("#d3_id").hide();
						$("#d4_id").hide();
						$("#d5_id").hide();

						$("#d1-1").click(function() {
							if ($(this).is(":checked")) {
								$("#d3_id").hide();
								$("#d4_id").hide();
								$("#d5_id").hide();
								$("#d2_id").show("slow");
							} else {
								$("#d2_id").hide("slow");
							}
						});

						$("#d1-2").click(function() {
							if ($(this).is(":checked")) {
								$("#d2_id").hide();
								$("#d4_id").hide();
								$("#d5_id").hide();
								$("#d3_id").show("slow");
							} else {
								$("#d3_id").hide("slow");
							}
						});
						
						$("#d1-3").click(function() {
							if ($(this).is(":checked")) {
								$("#d2_id").hide();
								$("#d3_id").hide();
								$("#d5_id").hide();
								$("#d4_id").show("slow");
							} else {
								$("#d4_id").hide("slow");
							}
						});
	
						$("#d1-4").click(function() {
							if ($(this).is(":checked")) {
								$("#d2_id").hide();
								$("#d3_id").hide();
								$("#d4_id").hide();
								$("#d5_id").show("slow");
							} else {
								$("#d5_id").hide("slow");
							}
						});
						$("#btn")
								.click(
										function() {
											window.location.href = "${pageContext.request.contextPath}/ResultDisease";
										});
					});
</script>
</head>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<h1>행동 이상</h1>
		<form action="${pageContext.request.contextPath}/ResultDog1"
			method="post" id="myForm">
			<div class="row" id="d1_id">
				<div class="col-sm-6">
					<label for="" class="form-label"> 1.아래 증상 중 하나 선택하세요 </label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d1-1" name="d1"
							value="1"> <label for="d1-1" class="form-check-label">기지개를 자주 켠다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d1-2" name="d1"
							value="2">
						<!-- 둘중 하나가 선택되는거라 이름이 같아야하고 아이디는 달라야한다. -->
						<label for="d1-2" class="form-check-label">특정 부위를 계속해서 핥는다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d1-3" name="d1"
							value="3"> <label for="d1-3" class="form-check-label">엉덩이를 바닥에 끌고 다닌다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d1-4" name="d1"
							value="4"> <label for="d1-4" class="form-check-label">한방향으로 빙빙 돈다</label>
					</div>
				</div>
			</div>
			<hr>
			<div class="row" id="d2_id">
				<div class="col-sm-6">
					<label for="" class="form-label">2.아래 증상 중 하나 선택하세요 </label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d2-1" name="d2"
							value="A"> <label for="d2-1" class="form-check-label">근육 크기가 작아진다.</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d2-2" name="d2"
							value="A">
						<!-- 둘중 하나가 선택되는거라 이름이 같아야하고 아이디는 달라야한다. -->
						<label for="d2-2" class="form-check-label">배뇨 및 배변을 어려워한다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d2-3" name="d2"
							value="B"> <label for="d2-3" class="form-check-label">기력이 없다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d2-4" name="d2"
							value="B"> <label for="d2-4" class="form-check-label">배가 부풀어 오른다.</label>
					</div>

				</div>
			</div>
			<hr>
			<div class="row" id="d3_id">
				<div class="col-sm-6">
					<label for="" class="form-label">2.아래 증상 중 하나 선택하세요</label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d3-1" name="d3"
							value="A"> <label for="d3-1" class="form-check-label">피부에서 각질과 같은 것들이 떨어져 나온다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d3-2" name="d3"
							value="A"> <label for="d3-2" class="form-check-label">털이 많이 빠진다.</label>
					</div>
				
				</div>
			</div>
			<hr>
			<div class="row" id="d4_id">
				<div class="col-sm-6">
					<label for="" class="form-label">2.아래 증상 중 하나 선택하세요 </label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d4-1" name="d4"
							value="A"> <label for="d4-1" class="form-check-label">항문 주변이 붓는다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d4-2" name="d4"
							value="A"> <label for="d4-2" class="form-check-label">항문 주위를 계속 핥는다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d4-3" name="d4"
							value="B"> <label for="d4-3" class="form-check-label">대변에 피가 섞여 나온다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d4-4" name="d4"
							value="B"> <label for="d4-4" class="form-check-label">항문밖으로 직장이 튀어나온다.</label>
					</div>
				</div>
			</div>
			<hr>
			<div class="row" id="d5_id">
				<div class="col-sm-6">
					<label for="" class="form-label">2.아래 증상 중 하나 선택하세요 </label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d5-1" name="d5"
							value="A"> <label for="d5-1" class="form-check-label">구토와 설사를 한다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d5-2" name="d5"
							value="A"> <label for="d5-2" class="form-check-label">기력과 식욕이 없다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d5-3" name="d5"
							value="B"> <label for="d5-3" class="form-check-label">비틀거린다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d5-4" name="d5"
							value="B"> <label for="d5-4" class="form-check-label">머리가 기울어진다</label>
					</div>
				</div>
			</div>
			<button id="btn" type="submit" class="w-100 btn btn-primary btm-lg">제출</button>
		</form>
	</div>
	<%@include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>