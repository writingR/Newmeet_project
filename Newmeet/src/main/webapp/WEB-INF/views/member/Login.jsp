<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
<script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>

<%@include file="/WEB-INF/views/frame/header.jsp"%>

	<h5 style="color: black; text-align: center; padding: 100px; font-weight: bold;">로그인페이지</h5>
	<div style="text-align: center; margin-top: -60px;">
		<button
			style="border: 1px solid #70a1ff;border-radius:10px; background: #70a1ff; text-align: center; width: 600px;padding:10px;
			font-family: 'Noto Sans KR', sans-serif;"
			><a href="<c:url value="/LoginForm" />" style="color:black">이메일로 로그인</a></button>
	</div>
	
	<script>

	</script>
</body>
</html>