<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	
</style>
</head>
<body>
<h1>모임 상세정보 페이지 좋아요를 안눌러봣거나 비로그인</h1>

	
	<h1>${m_name}</h1> <br>
	<img src="http://localhost:8080/nm/uploadfile/${m_img}" style="width: 200px; height: 150px;"> <br>
	<br><br><hr>
	${m_cont} <br><br><hr>
	<h2>${nidx}번사용자</h2>
	별점 준 사람 수 : ${m_star}  <br>
	별점 평균 : ${m_stotal/m_star} <img src="http://localhost:8080/nm/uploadfile/star0.png"><br>
	좋아요 총 수 : ${m_like} <img onclick="like()" src="http://localhost:8080/nm/uploadfile/like0.png"><br>
	카테고리 : ${small_idx} <br>
	현재 좋아요 상태 : 
	<c:if test="${l_like == 0}">
		<img onclick="like()" src="http://localhost:8080/nm/uploadfile/like0.png">
	</c:if>
	<c:if test="${l_like == 1}">
		<img onclick="like()" src="http://localhost:8080/nm/uploadfile/like1.png">
	</c:if>
	<c:if test="${l_like == null}">
		<img onclick="like()" src="http://localhost:8080/nm/uploadfile/like0.png">
	</c:if>
	<br>
	
		<br><br>
		
		<div id="list">
		</div>
                	
</body>
<script>
$(document).ready(function(){
	
	
	});
	

</script>
</html>