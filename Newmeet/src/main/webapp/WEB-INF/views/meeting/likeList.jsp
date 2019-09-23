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

<h1>좋아요순  리스트</h1>
	
	<a href="<c:url value="/like" />">좋아요순</a> <a href="<c:url value="/star" />">별점 순</a><a href="<c:url value="/moimList" />">전체 리스트</a>
		<br><br>
		<div id="list">
		</div>
                	
</body>
<script>
	$(document).ready(function(){
	
		$.ajax({
			url : 'http://localhost:8080/nm/meeting/like',
			type : 'GET',
			success : function(data) {
				var html = '';
				//console.log(data);
				for (var i = 0; i < data.length ; i++) {
					html += '<div class="list">';
					html += '<img src="http://localhost:8080/nm/uploadfile/' + data[i].m_img+ '" style="width: 200px; height: 150px;"><br>';
					html += '<a href="<c:url value="/moimInfo"/>?m_idx='+ data[i].m_idx +'">'+ data[i].m_name +'</a><br>';
					html += '<span><img src="http://localhost:8080/nm/uploadfile/like0.png"> ' + data[i].m_like +'</span><span><img src="http://localhost:8080/nm/uploadfile/star0.png">'+ (data[i].m_stotal/data[i].m_star).toFixed(1) +'</span>';
					html += '</div>';
					
					
					$('#list').html(html);
				}
					
			}
		});
		
		});
	
	
		
		
		
		
	
		

	

</script>
</html>