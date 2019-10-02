<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 #my{
 font-size: 60px;
 color: #2d3436;
 font-family: 'Black Han Sans', sans-serif;
 padding: 5px;
 margin-left: 100px;
 }
 #memInfo{
 width:1250px;
 margin: 0 auto;
 padding: 30px;
 vertical-align: 10px;
 font-family: 'Gothic A1', sans-serif;
 font-size:15px;
 color:black;
 }
 #memInfo1{
 padding: 20px;
 width:500px;
 margin: 0 auto;
 }
 #manager{
 color: black;
 }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<body>
<%@include file="/WEB-INF/views/frame/header.jsp"%>
<%-- ${sessionScope.loginKey}<h1>로그인키</h1>
 --%>
<%-- <%@include file="/WEB-INF/views/frame/header2.jsp"%> --%>



<img alt="" src="${pageContext.request.contextPath}/static/img/banner2.png">

<br><br><br>

<!-- <button class="show" id="my" type="button" class="btn btn-light" onclick="">좋아요</button> -->
<!-- <button class="show" id="my" type="button" class="btn btn-light" onclick="button_1();">내정보</button> -->
<a id="my" href="<c:url value="/newMoim" />">모임 생성</a></br>
<a id="my" href="<c:url value="/Info" />">내정보</a></br>
<!-- <button class="show1" id="my" type="button" class="btn btn-light" onclick="button_2();">프로필 관리</button> -->
<a id="my" href="<c:url value="/Modi" />">프로필 관리</a></br>
<a id="my" href="<c:url value="/Meet" />">My meet</a></br>
<a id="my" href="<c:url value="/loginOk" />">처음으로</a>
<!-- <button class="show" id="my" type="button" class="btn btn-light" onclick="">My meet</button>
<button class="hide" id="my" type="button" class="btn btn-light">처음으로</button> -->

<div id="memInfo">
</div>

<div id="memInfo1">
</div>


<script>
	
	function button_1() {
		var nidx = sessionStorage.getItem("loginKey");
		$.ajax({
				url : '/nm/user/' + nidx,
				type : 'GET',
				success : function(data) {
						var html = '';
						html += '<h1>내정보</h1><br>';
						html += '<span>사진 : </span><br><br>';
						html += '<span>이메일 : </span>' + '<span>' + data.nemail
								+ '</span><br><br>';
						html += '<span>닉네임: </span>' + '<span>' + data.nnic
								+ '</span>';
						$('#memInfo').html(html);
					}
				})
		}
	
	function button_2() {
		var nidx = sessionStorage.getItem("loginKey");
		$.ajax({
				url : '/nm/user/' + nidx,
				type : 'GET',
				success : function(data) {
						var html = '';
						html += '<a id="manager" href="<c:url value="Modi" />" style="font-size=25px;font-weight: bold;">수정 및 삭제</a>  ';
						$('#memInfo1').html(html);
					}
				})
		}
	
	
	 $(".hide").click(function(){
		    $("#memInfo").hide();
	 });
	 $(".hide").click(function(){
		    $("#memInfo1").hide();
	 });
	 $(".show").click(function(){
		    $("#memInfo").show();
	 });
	 $(".show1").click(function(){
		    $("#memInfo1").show();
	 });
	 
	 
	 
	 
	 
</script>

<%@include file="/WEB-INF/views/frame/footer.jsp"%>
<%@include file="/WEB-INF/views/frame/sc.jsp"%>

</body>
</html>