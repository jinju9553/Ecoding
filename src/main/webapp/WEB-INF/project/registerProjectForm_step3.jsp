<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/view/header.jsp"></c:import>
<meta charset="utf-8">
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
    
    #step03 {
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
      		<input type="hidden" name="title" value="${project['title']}">
      		<input type="hidden" name="simpleInfo" value="${project['simpleInfo']}">
      		<input type="hidden" name="category" value="${project['category']}">
      		<input type="hidden" name="hashtag" value="${project['hashTag']}">
      		<input type="hidden" name="ecotag" value="${project['ecoTag']}">
      		<input type="hidden" name="targetAmount" value="${project['targetPrice']}">
      		<input type="hidden" name="startDate" value="${project['startDate']}">
      		<input type="hidden" name="endDate" value="${project['endDate']}">
      		<input type="hidden" name="payDate" value="${project['paymentDate']}">
      		<input type="hidden" name="deliveryDate" value="${project['deliveryDate']}">
      		<input type="hidden" name="detailInfo" value="${project['detailInfo']}">
      		<input type="hidden" name="planInfo" value="${project['planInfo']}">
      		<input type="hidden" name="exchangeInfo" value="${project['exchangeInfo']}">
      		<input type="hidden" name="name" value="${reward['rewardName']}">
      		<input type="hidden" name="reward_price" value="${reward['rewardPrice']}">
      		<input type="hidden" name="reward_info" value="${reward['rewardInfo']}">
      		
      		<h3>아이디를 입력해주세요</h3>
      		<input type="text" name="ecoerId">
			<h3>Q1. 창작자(팀) 이름을 입력해주세요.</h3>
			<input type="text" name="teamName">
			<h3>Q2. 창작자(팀) 이미지를 첨부해주세요.</h3>
			<input type="file" name="teamImage">
			<h3>Q3. 창작자(팀) 소개를 작성해주세요.</h3>
			<textarea rows="15" cols="100" name="teamDetail"></textarea>
			<h3>Q4. 입금 계좌 정보를 입력해주세요.</h3>
			<input type="text" name="account">
			<p></p>
			<button name="step" class="goNext" value="step2" onClick="userCreate('<c:url value='/project/start' />')">Step 02</button>
			<button name="step" class="goNext" value="step4" onClick="userCreate('<c:url value='/project/start' />')">Step 04</button>
		</form>
      </div>
    </div>
    <div class="main">
		하단바
	</div>
</body>
</html>