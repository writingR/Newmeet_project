<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<body>
<%@include file="/WEB-INF/views/frame/header.jsp"%>
<h5 style="color: black; text-align: center; padding: 100px; font-weight: bold;">이메일로 회원가입</h5>
	<form id="regForm" method="post">
		<div style="width: 400px; margin: 0 auto; margin-top: -60px;">
				<!-- <img alt="" src="images/default.png" style="width:120px;height:120px;"> -->
				
			<!-- <div style="width: 110px;">
				<span class="btn btn-default btn-file" style="border:1px solid gray; " >
					이미지를 업로드하세요. <input type="file" name="nphoto" id="nphoto">
				</span>
			</div><br> -->
			<div class="form-group">
				<label for="formGroupExampleInput">아이디</label> <input type="email"
					class="form-control" id="nemail" name="nemail"
					placeholder="6~10 아이디를 입력해주세요." style="width: 400px;">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput2">비밀번호</label> <input
					type="password" class="form-control" id="npw" name="npw"
					placeholder="8~10 숫자/문자 조합 비밀번호를 입력해주세요." style="width: 400px;">
			</div>
			<!-- <div class="form-group">
				<label for="formGroupExampleInput2">비밀번호 확인</label> <input
					type="password" class="form-control" id="rPw"
					placeholder="비밀번호를 다시한번 입력해주세요." style="width: 400px;">
			</div> -->
			<br>
			<div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">이용약관에 동의합니다.</label>
			</div>
			<input type="submit" value="가입요청"
				style="width: 400px; padding: 15px; border: 1px solid #dfe4ea; border-radius: 10px; background: #dfe4ea;">
		</div>
	</form>





	<script>
	

		$(document).ready(function() {
			$('#regForm').submit(function() {
				$.ajax({
					url : 'http://localhost:8080/main/mem/regist',
					type : 'POST',
					data : {
						nemail : $('#nemail').val(),
						npw : $('#npw').val(),
					},
					success : function(data) {
						if (data == 'success') {
							alert('회원가입에 성공하였습니다.');
							location.replace('main')
						} else if (data == 'fail') {
							alert('오류가 발생하였습니다.');
						}
						
					}
					
				});
				return false;
			});
		});
	</script>






</body>
</html>