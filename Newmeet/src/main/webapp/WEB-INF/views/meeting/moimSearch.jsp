<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	검색 페이지
	
<c:forEach var="info" items="${AllList}" step="1">
    <h2>모임 제목 : ${info.m_name}</h2><br>
   		모임 대표 사진 <br>
   		<img src="http://localhost:8080/nm/uploadfile/${info.m_img}" style="width: 200px;height: 200px;"><br>
   		좋아요 : ${info.m_like} <br>
   		평점 : ${info.m_stotal/info.m_star}
</c:forEach>

	
</body>
</html>