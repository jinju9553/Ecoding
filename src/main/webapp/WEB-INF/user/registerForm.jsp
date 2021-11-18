<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../view/header.jsp"%>

<html lang="ko-kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 가입</title>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
function userCreate() {
	if (form.ecoerId.value == "") {
		alert("사용자 ID를 입력하십시오.");
		form.ecoerId.focus();
		return false;
	} 
	if (form.password.value == "") {
		alert("비밀번호를 입력하십시오.");
		form.password.focus();
		return false;
	}
	if (form.password.value != form.password2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		form.name.focus();
		return false;
	}
	if (form.name.value == "") {
		alert("이름을 입력하십시오.");
		form.name.focus();
		return false;
	}
	var emailExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if(emailExp.test(form.email.value)==false) {
		alert("이메일 형식이 올바르지 않습니다.");
		form.email.focus();
		return false;
	}
	var phoneExp = /^\d{2,3}-\d{3,4}-\d{4}$/;
	if(phoneExp.test(form.phone.value)==false) {
		alert("전화번호 형식이 올바르지 않습니다.");
		form.phone.focus();
		return false;
	}
	form.submit();
}
</script>
</head>
<body>
	<div class="container">
		<br>
		<h4>회원 가입</h4>
		<br>
		<!-- 회원가입이 실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
		<div class="row col-lg-12">
			<c:if test="${registerFailed}">
				<h6 class="text-danger">
					<c:out value="${exception.getMessage()}" />
				</h6>
			</c:if>
		</div>
		<!-- registration form  -->
		<form name="form" method="POST"
			action="<c:url value='/user/register'/>">
			<div class="form-group row">
				<label for="ecoerId" class="col-lg-2 col-form-label">사용자 ID</label>
				<div class="col-lg-10">
					<input type="text" name="ecoerId" class="form-control"
						placeholder="사용자 ID">
				</div>
			</div>
			<div class="form-group row">
				<label for="password" class="col-lg-2 col-form-label">비밀번호</label>
				<div class="col-lg-10">
					<input type="password" name="password" class="form-control"
						placeholder="password">
				</div>
			</div>
			<div class="form-group row">
				<label for="password2" class="col-lg-2 col-form-label">비밀번호
					확인</label>
				<div class="col-lg-10">
					<input type="password" name="password2" class="form-control"
						placeholder="비밀번호 확인">
				</div>
			</div>
			<div class="form-group row">
				<label for="name" class="col-lg-2 col-form-label">이름</label>
				<div class="col-lg-10">
					<input type="text" name="name" class="form-control"
						placeholder="이름"
						<c:if test="${registerFailed}">value="${ecoer.name}"</c:if>>
				</div>
			</div>
			<div class="form-group row">
				<label for="phone" class="col-lg-2 col-form-label">전화번호</label>
				<div class="col-lg-10">
					<input type="text" name="phone" class="form-control"
						placeholder="010-XXXX-YYYY"
						<c:if test="${registerFailed}">value="${ecoer.phone}"</c:if>>
				</div>
			</div>
						<div class="form-group row">
				<label for="address" class="col-lg-2 col-form-label">주소</label>
				<div class="col-lg-10">
					<input type="text" name="address" class="form-control"
						placeholder="주소"
						<c:if test="${registerFailed}">value="${ecoer.address}"</c:if>>
				</div>
			</div>
			<div class="form-group row">
				<label for="email" class="col-lg-2 col-form-label">이메일 주소</label>
				<div class="col-lg-10">
					<input type="text" name="email" class="form-control"
						placeholder="you@example.com"
						<c:if test="${registerFailed}">value="${ecoer.email}"</c:if>>
				</div>
			</div>
			<br>
			<div class="form-group">
				<input type="button" class="btn btn-primary" value="가입"
					onClick="userCreate()"> <a
					href="<c:url value='/home/main' />" class="btn btn-link">돌아가기</a>
			</div>
		</form>
	</div>
</body>
</html>