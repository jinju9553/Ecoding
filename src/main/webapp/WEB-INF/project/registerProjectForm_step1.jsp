<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
    function projectCreate(targetUri) {
    	form.action = targetUri; 
    	form.submit();
    }
</script>
<style>
    div.right {
      	width: 80%;
        float: right;
        box-sizing: border-box;
        border: none;
        overflow-y:auto; 
        overflow-x:hidden;
    }
    
    .stepList > div {
    	height: 80px;
    	border-top: none;
    	border-left: none;
    	border-right: none;
    	margin: -1px;
    }
    
    #step01 {
    	background-color: #87CEFA;
    }
    
    .enrollProgress {
    	 height: 55px;
    	 text-align: center;
    }
    
    .goNext{
		background-color: #87CEFA;
		width: 10%;
		height: 80px;
		border: 0;
		outline: 0;
		color: white;
	}
	
</style>
</head>
<body>
	<c:import url="/WEB-INF/project/register.jsp">
		<c:param name="main"></c:param>
	</c:import>
      <div class="right">
      	<form name="form" method="post" action="<c:url value='/project/register/form' />">
			<h3>Q1. 프로젝트 제목을 입력해주세요.</h3>
			<input type="text" name="projectName">
			<h3>Q2. 프로젝트 대표 이미지를 첨부해주세요.</h3>
			<input type="file" name="thumbnailImage">
			<h3>Q3. 간단한 프로젝트 설명을 작성해주세요.</h3>
			<input type="text" name="projectBrief">
			<h3>Q4. 프로젝트 카테고리를 선택해주세요.</h3>
			<input type="radio" name="category" value="1">1번 카테고리
			<input type="radio" name="category" value="2">2번 카테고리
			<input type="radio" name="category" value="3">3번 카테고리
			<input type="radio" name="category" value="4">4번 카테고리
			<h3>Q5. 프로젝트와 관련된 해시태그를 입력해주세요.</h3>
			<input type="text" name="hashtag">
			<h3>Q6. 환경과 관련된 태그를 모두 체크해주세요.</h3>
			<input type="checkbox" name="ecotag" value="1">1번 태그
			<input type="checkbox" name="ecotag" value="2">2번 태그
			<input type="checkbox" name="ecotag" value="3">3번 태그
			<input type="checkbox" name="ecotag" value="4">4번 태그
			<h3>Q7. 프로젝트 목표 금액을 작성해주세요.</h3>
			<input type="text" name="targetAmount">
			<h3>Q8. 프로젝트 기간을 설정해주세요.</h3>
			시작일 설정: <input type="date" name="startDate">
			마감일 설정: <input type="date" name="endDate">
			<p></p>
			시작 시간 설정: <input type="time" name="startTime">
			마감 시간 설정: <input type="time" name="endTime">
			<p></p>
			결제일 설정: <input type="date" name="payDate">
			배송 시작일 설정: <input type="date" name="deliveryDate">
			<p></p>
			<button name="step" class="goNext" value="step2">Step 02</button>
		</form>
      </div>
    </div>
    <div class="main">
		하단바
	</div>
</body>
</html>