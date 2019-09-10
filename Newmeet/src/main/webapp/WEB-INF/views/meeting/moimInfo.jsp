<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
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
<h1>모임 상세정보 페이지</h1>
	
	<h1>${m_name}</h1> <br>
	<img src="http://localhost:8080/nm/uploadfile/${m_img}" style="width: 200px; height: 150px;"> <br>
	<br><br><hr>
	${m_cont} <br><br><hr>
	
	${m_star} <br>
	${m_like} <br>
	${small_idx} <br>
		<br><br>
		<div id="list">
		</div>
                	
</body>
<script>


	

</script>
</html>