<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#idcheck {
		display: none;
	}
	#niccheck {
		display: none;
	}
	.color_red {
		color : #ff6b81;
		font-family: 'Nanum Gothic', sans-serif;
		font-weight: 600;
	}
	.color_blue {
		color : #70a1ff;
		font-family: 'Nanum Gothic', sans-serif;
		font-weight: 600;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<body>
<%@include file="/WEB-INF/views/frame/header.jsp"%>
<h5 style="color: black; text-align: center; padding: 100px; font-weight: bold;">이메일로 회원가입</h5>
	<form id="regForm" enctype="multipart/form-data">
		<div style="width: 400px; margin: 0 auto; margin-top: -60px;">
				<!-- <img alt="" src="images/default.png" style="width:120px;height:120px;"> -->
				
			<div style="width: 110px;">
				<label for="formGroupExampleInput"><span style="color:black;font-weight: bold;">프로필사진</span></label>
				<span class="btn btn-default btn-file" style="border:1px solid gray; " >
					<input type="file" name="nphoto" id="nphoto">
				</span>
			</div><br>
			<div class="form-group">
				<label for="formGroupExampleInput"><span style="color:black;font-weight: bold;">아이디</span></label> 
					<input type="checkbox" id="idcheck">
					<input type="email"
					class="form-control" id="nemail" name="nemail"
					placeholder="6~10 아이디를 입력해주세요." style="width: 400px;" required> <span id="idcheckmsg"></span>
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput2"><span style="color:black;font-weight: bold;">비밀번호</span></label> <input
					type="password" class="form-control" id="npw" name="npw"
					placeholder="8~10 숫자/문자 조합 비밀번호를 입력해주세요." style="width: 400px;" required>
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput2"><span style="color:black;font-weight: bold;">닉네임</span></label> 
					<input type="checkbox" id="niccheck">
					<input
					type="text" class="form-control" id="nnic" name="nnic"
					placeholder="원하시는 별명을 입력해주세요." style="width: 400px;" required><span id="niccheckmsg"></span>
			</div>
			<br>
			<div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">이용약관에 동의합니다.</label>
			</div>
			<input type="submit" value="가입요청" class="clickbtn"
				style="width: 400px; padding: 15px; border: 1px solid #dfe4ea; border-radius: 10px; background: #dfe4ea;">
		</div>
	</form>





	<script>


		$(document).ready(function() {
			$('#regForm').submit(function() {
			 var regformData = new FormData();
			 	regformData.append("nphoto",$('#nphoto')[0].files[0]);
			 	regformData.append("nemail",$('#nemail').val());
			 	regformData.append("npw",$('#npw').val());
			 	regformData.append("nnic",$('#nnic').val()); 
				$.ajax({
					url : '/nm/mem/regist',
					type : 'post',
					data :regformData,
					processData: false,
					contentType: false,
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
			
			
		$('#nemail').focusout(function(){
				
				$.ajax({
					url: '/nm/mem/idCheck',
					type: 'get',
					data: {nemail: $(this).val() },
					success: function(data){
						/* alert(data); */
						
						$('#idcheckmsg').html('');
						$('#idcheckmsg').removeClass('color_red');
						$('#idcheckmsg').removeClass('color_blue');
						
						if(data == 'Y'){
							alert('중복체크가 완료되었습니다.');
							$('#idcheck').prop('checked', true);
							$('#idcheckmsg').html('사용가능합니다.');
							$('#idcheckmsg').addClass('color_blue');
						} else {
							alert('사용중인 아이디입니다.');
							$('#idcheck').prop('checked', false);
							$('#idcheckmsg').html('다른 이메일을 입력해주세요.');
							$('#idcheckmsg').addClass('color_red');
						}
						
					}
				});
			
			
			});
		
		$('#nnic').focusout(function(){
			
			$.ajax({
				url: '/nm/mem/nicCheck',
				type: 'get',
				data: {nnic: $(this).val() },
				success: function(data){
					/* alert(data); */
					
					$('#niccheckmsg').html('');
					$('#niccheckmsg').removeClass('color_red');
					$('#niccheckmsg').removeClass('color_blue');
					
					if(data == 'Y'){
						alert('중복체크가 완료되었습니다.');
						$('#niccheck').prop('checked', true);
						$('#niccheckmsg').html('사용가능한 닉네임입니다.');
						$('#niccheckmsg').addClass('color_blue');
					} else {
						alert('사용중인 닉네임입니다.');
						$('#niccheck').prop('checked', false);
						$('#niccheckmsg').html('다른 닉네임을 입력해주세요.');
						$('#niccheckmsg').addClass('color_red');
					}
					
				}
			});
		
		
		});

	});
	
	</script>






</body>
</html>