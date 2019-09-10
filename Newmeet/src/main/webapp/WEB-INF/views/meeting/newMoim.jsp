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
	
	<h2> 카테고리 선택</h2>
		<br><br>
		<div>
		
		</div>
                	<select id="category" name="category" onclick="category()">
                		
                	
                	</select>
                	<select id="scategory" name="scategory">
                	<option selected>소분류 선택</option>
                	</select>
					<input type="button" onclick="scategory()" value="Next">
</body>
<script>
	$(document).ready(function(){
	
		$.ajax({
			url : 'http://localhost:8080/nm/meeting',
			type : 'GET',
			success : function(data) {
				var html = '';
				html += '<option selected>대분류 선택</option>';
				//console.log(data);
				for (var i = 0; i < data.length ; i++) {
					
					html += '<option value="'+ data[i].big_idx +'">'+ data[i].big_ca +'</option>';
					
					$('#category').html(html);
				}
					
			}
		});
		
		});
	
	
		function category(){
			var idx = $('#category').val();
			
			$.ajax({
				url : 'http://localhost:8080/nm/meeting/'+ idx,
				type : 'GET',
				success : function(data) {
					var html = '';
					html += '<option selected>소분류 선택</option>';
					//console.log(data);
					for (var i = 0; i < data.length ; i++) {
						
						html += '<option value="'+ data[i].small_idx +'">'+ data[i].small_ca +'</option>';
						
						$('#scategory').html(html);
					}
						
				}
			});
			
		}
		
		function scategory(){
			var idx = $('#scategory').val();
			
			sessionStorage.setItem("small_idx",idx);
			location.href="/nm/newMoim2";
			
		}
		

	

</script>
</html>