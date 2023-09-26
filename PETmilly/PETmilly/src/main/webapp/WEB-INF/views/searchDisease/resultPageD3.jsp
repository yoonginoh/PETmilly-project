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
		<h1>코 이상</h1>
		<form action="${pageContext.request.contextPath}/ResultDog1"
			method="post" id="myForm">
			<div class="row" id="d1_id">
				<div class="col-sm-6">
					<label for="" class="form-label">1.아래 증상 중 하나 선택하세요 </label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d1-1" name="d1"
							value="1"> <label for="d1-1" class="form-check-label">콧물을 많이 흘린다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d1-2" name="d1"
							value="2">
						<!-- 둘중 하나가 선택되는거라 이름이 같아야하고 아이디는 달라야한다. -->
						<label for="d1-2" class="form-check-label">코피가 난다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d1-3" name="d1"
							value="3"> <label for="d1-3" class="form-check-label">콧물, 재채기가 난다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d1-4" name="d1"
							value="4"> <label for="d1-4" class="form-check-label">코를 곤다</label>
					</div>
				</div>
			</div>
			<hr>
			<div class="row" id="d2_id">
				<div class="col-sm-6">
					<label for="" class="form-label">2.아래 증상 중 하나 선택하세요 </label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d2-1" name="d2"
							value="A"> <label for="d2-1" class="form-check-label">코에서 악취가 난다.</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d2-2" name="d2"
							value="A">
						<!-- 둘중 하나가 선택되는거라 이름이 같아야하고 아이디는 달라야한다. -->
						<label for="d2-2" class="form-check-label">숨을 쉬기 힘들어 한다</label>
					</div>

				</div>
			</div>
			<hr>
			<div class="row" id="d3_id">
				<div class="col-sm-6">
					<label for="" class="form-label">2.아래 증상 중 하나 선택하세요</label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d3-1" name="d3"
							value="A"> <label for="d3-1" class="form-check-label">콧물이 나온다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d3-2" name="d3"
							value="A"> <label for="d3-2" class="form-check-label">재채기를 한다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d3-3" name="d3"
							value="B"> <label for="d3-3" class="form-check-label">피부에 멍이 잘든다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d3-4" name="d3"
							value="B"> <label for="d3-4" class="form-check-label">혈액이 섞인 소변 및 대변을 본다</label>
					</div>
				</div>
			</div>
			<hr>
			<div class="row" id="d4_id">
				<div class="col-sm-6">
					<label for="" class="form-label">2.아래 증상 중 하나 선택하세요 </label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d4-1" name="d4"
							value="A"> <label for="d4-1" class="form-check-label">새끼이고 열이나 기침, 눈곱등을 동반한다.</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d4-2" name="d4"
							value="B"> <label for="d4-2" class="form-check-label">열이 있다.</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d4-3" name="d4"
							value="B"> <label for="d4-3" class="form-check-label">콧물이 끈적인다.</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d4-4" name="d4"
							value="B"> <label for="d4-4" class="form-check-label">물같은 콧물이 나온다.</label>
					</div>
				</div>
			</div>
			<hr>
			<div class="row" id="d5_id">
				<div class="col-sm-6">
					<label for="" class="form-label">2.아래 증상 중 하나 선택하세요 </label>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d5-1" name="d5"
							value="A"> <label for="d5-1" class="form-check-label">호흡 곤란을 동반한다</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d5-2" name="d5"
							value="B"> <label for="d5-2" class="form-check-label">무호흡 증상이 나타난다.</label>
					</div>
					<div class="form-check">
						<input type="radio" class="form-check-input" id="d5-3" name="d5"
							value="B"> <label for="d5-3" class="form-check-label">숨쉬기를 힘들어한다</label>
					</div>
				</div>
			</div>
			<button id="btn" type="submit" class="w-100 btn btn-primary btm-lg">제출</button>
		</form>
	</div>
	<%@include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>