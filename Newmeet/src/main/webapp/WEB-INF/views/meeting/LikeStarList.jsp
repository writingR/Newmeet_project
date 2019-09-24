<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%
	session.setAttribute("MemberIdx",107);
%>   
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	.list{
		float: left;
	}
	
	span{
		
		margin-left: 15px;
	}
</style>
</head>
<body>
<h1> 검색 </h1>
<form action="moimSearch" method="get">
	<input type="text" id="Keyword" name="Keyword">
	<input type="submit" value="검색">
</form>

<h1>좋아요 / 별점순 리스트</h1>
	
	<a href="<c:url value="/likestar?likestar=1" />">좋아요순</a> <a href="<c:url value="/likestar?likestar=2" />">별점 순</a><a href="<c:url value="/moimList" />">전체 리스트</a>
		<br><br>
		<c:forEach var="info" items="${AllList}" step="1">
    <h2>모임 제목 : ${info.m_name}</h2><br>
   		모임 대표 사진 <br>
   		<img src="http://localhost:8080/nm/uploadfile/${info.m_img}" style="width: 200px;height: 200px;"><br>
   		좋아요 : ${info.m_like} <br>
   		평점 : ${info.m_stotal/info.m_star}
   		
</c:forEach>

<div>
<img src="http://localhost:8080/nm/uploadfile/' + data[i].m_img+ '" style="width: 200px; height: 150px;"><br>';
<a href="<c:url value="/moimInfo"/>?m_idx=${info.m_idx}">'+ data[i].m_name +'</a><br>';
<span><img src="http://localhost:8080/nm/uploadfile/like0.png"> ' + data[i].m_like +'</span><span><img src="http://localhost:8080/nm/uploadfile/star0.png">'+ (data[i].m_stotal/data[i].m_star).toFixed(1) +'</span>';
</div>
                	
</body>
<script>


</script>
</html>