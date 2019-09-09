<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<body>
<%@include file="/WEB-INF/views/frame/header.jsp"%>
<h5 style="color: black; text-align: center; padding: 100px; font-weight: bold;">이메일로 로그인</h5>
	<form id="logForm" method="post">
		<div style="width: 400px; margin: 0 auto; margin-top: -60px;">
			<div class="form-group">
				<label for="formGroupExampleInput">아이디</label> <input type="text"
					class="form-control" id="Nemail" name="nemail"
					placeholder="아이디를 정확히 입력해주세요." style="width: 400px;">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput2">비밀번호</label> <input
					type="password" class="form-control" id="Npw" name="npw"
					placeholder="비밀번호를 정확히 입력해주세요." style="width: 400px;">
			</div>
			<div class="text-center">
				<button type="button" class="btn btn-skin btn-lg btn-block" onclick="Loginclick()">로그인</button>
			</div>
	</form>



	<script>
   
		  function Loginclick() {
				$.ajax({
					url : 'http://localhost:8080/main/mem/login',
					type : 'POST',
					data : JSON.stringify({
						nemail : $('#Nemail').val(),
						npw : $('#Npw').val()
					}),
					contentType : 'application/json;charset=utf-8',
					success : function(data) {
						if (data == 'yet') {
							console.log(data);
						} else if (data == 'out') {
							console.log(data);
						} else if (data == 'fail') {
							console.log(data);
						} else if (data != null) {
							console.log(data);
							sessionStorage.setItem("loginKey", data);
							var session = sessionStorage.getItem("loginKey");
							console.log(session);
							console.log(typeof session);
							alert('로그인 되었습니다.');
							location.replace("loginOk");
	
						}	
					},
					error : function(data) {
						console.log('로그인 실패: ' + data);
						alert('로그인에 실패하였습니다.');
					},
					complete: function() {
						$('#Nemail').val(''),
						$('#Npw').val('')
					}
				});
			}
	  
		 
		  
	</script>



</body>
</html>