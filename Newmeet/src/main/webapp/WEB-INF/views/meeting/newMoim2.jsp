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
	
	<h2>모임 제목 설정</h2>
		<br><br>
		<input type="text" id="m_name" name="m_name">
                	
					<input type="button" onclick="m_name()" value="Next">
</body>
<script>


function m_name(){
	var m_name = $('#m_name').val();
	
	sessionStorage.setItem("m_name",m_name);
	location.href="/nm/newMoim3";
	
}
		

	

</script>
</html>