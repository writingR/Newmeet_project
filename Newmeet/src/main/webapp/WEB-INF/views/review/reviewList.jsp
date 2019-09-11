<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/frame/link.jsp"%>

<%
	session.setAttribute("loginKey", 17);
%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/WEB-INF/views/frame/header.jsp"%>
<%@include file="/WEB-INF/views/frame/nav.jsp"%>

	개수 : 
	${count}
	<table style="border: 1px solid;">
	<tr>
			<td>r_idx</td>
			<td>r_title</td>
			<td>r_content</td>
			<td>r_star</td>
			<td>r_date</td>
			<td>r_like</td>
			<td>m_idx</td>
			<td>nidx</td>
			<td>nphoto</td>
			<td>r_img</td>
			<td>rlike_state</td>
			<td>좋아요버튼</td>
	</tr>
	<c:forEach items="${reviewList}" var="review">
		<tr>
			<td>${review.r_idx}</td>
			<td>${review.r_title}</td>
			<td>${fn:substring(review.r_content.replaceAll('(<([^>]+)>)',''),0,100)}</td>
			<td>${review.r_star}</td>
			<td>${review.r_date}</td>
			<td>${review.r_like}</td>
			<td>${review.m_idx}</td>
			<td>${review.nidx}</td>
			<td>${review.nphoto}</td>
			<td>${review.r_img}</td>
			<td>${review.rlike_state}</td>
			<td><a href="${pageContext.request.contextPath}/review/like?rIdx=${review.r_idx}">좋아요버튼</a>
			</td>
		</tr>
	</c:forEach>
	</table>
	
	
	<a href="${pageContext.request.contextPath}/review/write?mNum=${moimNum}">글작성하기</a>
	<button></button>
	
	
	<%@include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>
</body>
</html>