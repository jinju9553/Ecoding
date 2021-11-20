<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<c:import url="/WEB-INF/view/header.jsp"></c:import>
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/projectRegister.css'/>"/>
<meta charset="utf-8">
<title>Insert title here</title>
<script>
    function projectCreate(targetUri) {
    	form.action = targetUri; 
    	form.submit();
    }
</script>
<style>
#step01 {
   	background-color: #87CEFA;
   	color: white;
   }
</style>
</head>
<body>
 <div class="main">
    	<a href="<c:url value='/project/view' />" target="_self">&nbsp프로젝트 등록</a>
    	<span class="step"> > Step 01</span>
    </div>
	<c:import url="/WEB-INF/project/register.jsp">
		<c:param name="main"></c:param>
	</c:import>
	<div id="enrollProgress">
	    		진행도 <progress value="0.2"></progress>
	    	</div>
	    </div>
     <div class="right">
     	<form name="form" method="post" action="<c:url value='/project/register/form' />">
			<p>Q1. 프로젝트 제목을 입력해주세요.</p>
			&nbsp<input type="text" name="title">
			<br><br>
			<p>Q2. 프로젝트 대표 이미지를 첨부해주세요.</p>
			&nbsp<input type="file" name="thumbnailImage">
			<br><br>
			<p>Q3. 간단한 프로젝트 설명을 작성해주세요.</p>
			&nbsp<input type="text" name="simpleInfo">
			<br><br>
			<p>pQ4. 프로젝트 카테고리를 선택해주세요.</p>
			&nbsp<input type="radio" name="category" value="식품">식품
			&nbsp<input type="radio" name="category" value="패션">패션
			&nbsp<input type="radio" name="category" value="생활">생활
			&nbsp<input type="radio" name="category" value="건강">건강
			&nbsp<input type="radio" name="category" value="문구">문구
			&nbsp<input type="radio" name="category" value="인테리어">인테리어
			<br>
			&nbsp<input type="radio" name="category" value="반려동물">반려동물
			&nbsp<input type="radio" name="category" value="미용">미용
			&nbsp<input type="radio" name="category" value="식물">식물
			&nbsp<input type="radio" name="category" value="도서">도서
			&nbsp<input type="radio" name="category" value="도서">테크
			<br><br>
			<p>Q5. 프로젝트와 관련된 해시태그를 입력해주세요.</p>
			&nbsp<input type="text" name="hashtag">
			<br><br>
			<p>Q6. 환경과 관련된 태그를 체크해주세요.</p>
			&nbsp<input type="radio" name="ecotag" value="비건">비건
			&nbsp<input type="radio" name="ecotag" value="친환경">친환경
			&nbsp<input type="radio" name="ecotag" value="재활용">재활용
			<br><br>
			<p>pQ7. 프로젝트 목표 금액을 작성해주세요.</p>
			&nbsp<input type="text" name="targetAmount">
			<br><br>
			<p>Q8. 프로젝트 기간을 설정해주세요.</p>
			&nbsp시작일 설정: <input type="date" name="startDate">
			&nbsp마감일 설정: <input type="date" name="endDate">
			<br><br>
			&nbsp결제일 설정: <input type="date" name="payDate">
			&nbsp배송 시작일 설정: <input type="date" name="deliveryDate">
			<br><br>
			&nbsp<button name="step" class="goNext" value="step2" onclick="proPlusFunc()">Step 02</button>
		</form>
     </div>
</body>
</html>