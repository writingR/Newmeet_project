<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<h1>모임을 생성하자</h1>
	
	<h2>모임 소개글 작성</h2>
		<br><br>
		<textarea id="m_cont" name="m_cont" style="width: 500px; height: 300px;"></textarea>
		
                	
					<input type="button" onclick="m_cont()" value="Next">
</body>
<script>


function m_cont(){
	var m_cont = $('#m_cont').val();
	
	sessionStorage.setItem("m_cont",m_cont);
	location.href="/nm/newMoim4";
	
}
		

	

</script>
</html>