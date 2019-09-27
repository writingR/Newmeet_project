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
<script>
function findPw(){
	 
	 window.open("FindPw","new","width=470, height=200, resizable=no, scrollbars=no, status=no, location=no, directories=no;");
	}
</script>
<body>

<%@include file="/WEB-INF/views/frame/header.jsp"%>


<h5 style="color: black; text-align: center; padding: 100px; font-weight: bold;">이메일로 로그인</h5>

	<form id="logForm" method="post">
		<div style="width: 400px; margin: 0 auto; margin-top: -60px;">
			<div class="form-group">
				<label for="formGroupExampleInput"><span style="color:black;font-weight: bold;">아이디</span></label> <input type="text"
					class="form-control" id="Nemail" name="nemail"
					placeholder="아이디를 정확히 입력해주세요." style="width: 400px;">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput2"><span style="color:black;font-weight: bold;">비밀번호</span></label> <input
					type="password" class="form-control" id="Npw" name="npw"
					placeholder="비밀번호를 정확히 입력해주세요." style="width: 400px;">
			</div>
			<div class="text-center">
				<button type="button" class="btn btn-skin btn-lg btn-block" onclick="Loginclick()">로그인</button>
			</div><br>
			<%-- <a href="<c:url value="/Welcome" />" style="margin-left:80px;color:black;">아직 뉴밋 회원이 아니세요?</a><br>
			<a href="" style="margin-left:80px;color:black;">비밀번호를 잊어버리셨습니까?</a> --%>
			<span>아직 뉴밋 회원이 아니세요? </span><a href="<c:url value="/Welcome" />" style="color:black;font-size:16px;font-weight:bold;">회원가입</a><span>하러 갈게요!</span><br>
			<a href="" onclick="findPw()">비밀번호를 잊어버리셨습니까?</a>
	</form>



	<script>
   
		  function Loginclick() {
				
			    $.ajax({
					url : '/nm/login',
					type : 'POST',
					data : JSON.stringify({
						nemail : $('#Nemail').val(),
						npw : $('#Npw').val()
					}),
					contentType : 'application/json;charset=utf-8',
					success : function(data) {
						if (data == 'yet') {
							alert('이메일 인증후에 로그인해주세요.');
						} else if (data == 'fail') {
							alert('비밀번호를 확인해주세요');
						} else if (data != null) {
							console.log(data);
							var session = sessionStorage.getItem("MemberIdx");
							console.log(session);
							console.log(typeof session);
							alert('로그인 되었습니다.');
							location.replace("main1");
	
						}	
					},
					error : function(data) {
						/* console.log('로그인 실패: ' + data); */
						alert('로그인에 실패하였습니다.');
						location.reload();
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