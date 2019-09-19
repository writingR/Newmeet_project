<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<br>
<h3> 비밀번호찾기</h3>
<hr>
<form class="form-inline">
  <div class="form-group mb-2">
    <label for="staticEmail2" class="sr-only"></label>
    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value=" 뉴밋 아이디 입력">
  </div>
  <div class="form-group mx-sm-3 mb-2">
    <label for="inputPassword2" class="sr-only">뉴밋 ID</label>
    <input type="email" class="form-control" id="Nemail" placeholder="뉴밋 ID" name="nemail">
  </div>
  <!-- <button type="submit" class="btn btn-primary mb-2">입력완료</button> -->
  <button type="button" id="find" class="btn btn-secondary" style="margin-top: -10px; margin-left:3px;">입력완료</button>
</form>
<a onclick="window.close()" style="margin-left:360px;margin-top:300px;font-size: 12px; color: black;cursor:pointer;" >창 닫을게요!</a>


<script>
$(function(){
	$("#find").click(function(){
		$.ajax({
			url : "/nm/FindPwOK",
			type : "POST",
			data : {
				nemail : $("#Nemail").val()
			},
			success : function(result) {
				alert(result);
			},
		})
	});
})
</script>

</body>
</html>