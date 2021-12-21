<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../view/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 추가</title>
<style>
	.d {
		text-align:center;
		width:1000px;
		margin-left:auto;
		margin-right:auto;
	}
	h4 {
		text-align:left;
		padding-left:200px;
	}
	#inputC {
		padding-top:2px;
		padding-left:10px;
		width:450px;
		height:200px;
	}
	#inputT {
		text-align:center;
		width:20px;
	}
	table {
		width:500px;
		margin-left:auto;
		margin-right:auto;
	}
	#txt {
		padding-left:8px;
		font-size:20px;
	}
	#btn {
		text-align:right;
		padding-right:10px;
		padding-top:20px;
	}
	#register {
		border:0;
		width:50px;
		height:25px;
		font-size:15px;
		font-weight:bold;
		color:white;
		background-color:#d2d2d2;
		border-radius:3px;
	}
	#register:hover {
		background-color:#6EDCDC;
	}
</style>
</head>
<body>
<div class="d">
	<form action="<c:url value='/project/notice/register?projectId=${projectId}' />" method="POST">
	<h4>공지 추가</h4>
	<table>
		<tr>
			<td id="txt">내용 입력</td>
		</tr>
		<tr>
			<td id="inputT"><input id="inputC" type="text" name="content" size="20px"></td>
		</tr>
		<tr>
			<td id="btn"><input id="register" type="submit" size="20px" value="추가"></td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>