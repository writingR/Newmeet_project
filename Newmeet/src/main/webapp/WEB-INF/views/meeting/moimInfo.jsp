<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	
</style>
</head>
<body>
<h1>���� ������ ������ ���ƿ並 �ѹ��̶� ������ �����</h1>
	
	
	
	<div>
		${m_cont}
	</div>
	
	
	
	
	
	
	
	
	<br>
	
		<br><br>
		
		<div id="list">
		</div>
                	
</body>
<script>
$(document).ready(function(){
	
	$.ajax({
		url : 'http://localhost:8080/nm/meeting/list',
		type : 'GET',
		success : function(data) {
			var html = '';
		
				html += '<h1>${m_name}</h1> <br>';
				html += '<img src="http://localhost:8080/nm/uploadfile/${m_img}" style="width: 200px; height: 150px;"> <br>';
				html += '<br><br><hr>';
				
				html += '<h2>${nidx}�������</h2>${m_stotal}${m_star}';
				html += '���� �� ��� �� : ${m_star}  <br>';
				html += '���� ��� : ${m_stotal/m_star} <img src="http://localhost:8080/nm/uploadfile/star0.png"><br>';
				html += '���ƿ� �� �� : ${m_like} <img onclick="like()" src="http://localhost:8080/nm/uploadfile/like0.png"><br>';
				html += 'ī�װ� : ${small_idx} <br>';
				html += '���� ���ƿ� ���� : ';
				html += '<c:if test="${l_like == 0}">';
				html += '<img onclick="like(${m_idx})" src="http://localhost:8080/nm/uploadfile/like0.png">';
				html += '</c:if>';
				html += '<c:if test="${l_like == 1}">';
				html += '<img onclick="like(${m_idx})" src="http://localhost:8080/nm/uploadfile/like1.png">';
				html += '</c:if>';
				
				$('#list').html(html);
			
				
		}
	});
	
	});
	function like(m_idx){
		var m_idx = m_idx;
		alert('1');
		$.ajax({
			url : 'http://localhost:8080/nm/like',
			type : 'GET',
			success : function(data) {
				alert('2');
				var html = '';
				if(data == -1){
					alert('�α����ض�');
				}else if(data == 0){
					alert('�߾ȴ�');
				}else if(data == 1){
					alert('������');
					
				}
					
					
				
					
			}
		});
	}
	

</script>
</html>