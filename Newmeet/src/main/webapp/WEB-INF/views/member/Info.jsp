<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#profile{
width: 120px;
height:120px;
border-radius: 50px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<body>
<%@include file="/WEB-INF/views/frame/header2.jsp"%>
<img alt="" src="static/img/banner2.png">
<br><br><br>
<%-- 		<h1
			style="width: 400px; margin: 0 auto; color: black; font-size: 50px; font-weight: bold;">내정보</h1>
		<br>
		<div id="memInfo" style="width: 400px; margin: 0 auto;">
			<img id="profile" src="/nm/uploadfile/${MemberImg}">
			<br> <span style="color: black; font-weight: bold;vertical-align:10px;">이메일 :
			</span><span style="vertical-align:10px;">${MemberEmail}</span><br>
			<span style="color: black; font-weight: bold;">닉네임:
			</span><span>${MemberNic}</span>
		<br>
		<br>
	</div> --%>

	<div class="card text-center" style="width:1000px;margin:0 auto;">
		<div class="card-header">내정보</div>
		<div class="card-body">
			<!-- <h5 class="card-title">Special title treatment</h5>
			<p class="card-text">With supporting text below as a natural
				lead-in to additional content.</p> -->
			<img id="profile" src="/nm/uploadfile/${MemberImg}">
			<br> <span style="color: black; font-weight: bold;vertical-align:10px;">이메일 :
			</span><span style="vertical-align:10px;">${MemberEmail}</span><br>
			<span style="color: black; font-weight: bold;">닉네임:
			</span><span>${MemberNic}</span><br>	
			<a href="<c:url value="/Mypage" />" class="btn btn-light">마이페이지로 가기</a>
		</div>
		<div class="card-footer text-muted">수정을 원하시면 프로필관리로 가시면 됩니다!!!</div>
	</div><br><br>

	







	<!-- <script>
	$(document).ready(function() {
		var nidx = sessionStorage.getItem("loginKey");
		$.ajax({
				url : '/nm/mem/user/' + nidx,
				type : 'GET',
				success : function(data) {
						var html = '';
						
						html += '<img id="profile" src="/nm/uploadfile/' + data.nphoto + '"><br><br>';
						html += '<span style="color:black;font-weight:bold;">이메일 : </span>' + '<span>' + data.nemail
								+ '</span><br><br>';
						html += '<span style="color:black;font-weight:bold;">닉네임: </span>' + '<span>' + data.nnic
								+ '</span>';
						$('#memInfo').html(html);
					}
				})
	})	
	</script> -->
	
	<%@include file="/WEB-INF/views/frame/footer.jsp"%>

</body>
</html>