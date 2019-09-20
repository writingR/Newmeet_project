<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../frame/sc.jsp" %>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> ${m_idx}수정 페이지 </h1>
	<form id="form">
	<input type="text" id="m_idx" name="m_idx" value="${m_idx}">
	<h4>모임 카테고리</h4>
	<select id="category" name="category" onclick="category1()">
                		
                	</select>
	<select id="small_idx" name="small_idx"><option selected>소분류 선택</option></select>
	<table>
	<thead id="table">
		
		</thead>
		<tbody>
		<tr>
			<td>현재 모임 대표 사진</td>
		</tr>
		<tr>
			<td><img src="http://localhost:8080/nm/uploadfile/${m_img}" style="width: 300px;height: 200px;"><h4><a href="<c:url value="/moimimageedit"/>?m_idx=${m_idx}">대표사진 변경하러 가기</a></h4></td>
		</tr>
		<tr>
			<td>모임 제목</td>
		</tr>
		<tr>
			<td><input type="text" id="m_name" name="m_name" value="${m_name}"></td>
		</tr>
		<tr>
			<td>모임 소개글</td>
		</tr>
		<tr>
			<td><textarea id="m_cont" name="m_cont" required>${m_cont}</textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정하기"></td>
		</tr>
		</tbody>
	</table>
	</form>
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
	
				$('#m_cont').summernote({
		    		  height: 300,
		    		  width: 600,           // set editor height
		    		  minHeight: null,             // set minimum height of editor
		    		  maxHeight: 500,             // set maximum height of editor
		    		  focus: true,                  // set focus to editable area after initializing summernote
		    		  callbacks: {
		    	          onImageUpload: function(files, editor, welEditable) {
		    	            for (var i = files.length - 1; i >= 0; i--) {
		    	              sendFile(files[i], this);
		    	            }
		    	            
		    	          }
		    	        }
		        	});
		    	function sendFile(file, el) {
		    	      var form_data = new FormData();
		    	      form_data.append('file', file);
		    	      $.ajax({
		    	        data: form_data,
		    	        type: "POST",
		    	        url: 'http://localhost:8080/nm/meeting/photo',
		    	        cache: false,
		    	        contentType: false,
		    	        enctype: 'multipart/form-data',
		    	        processData: false,
		    	        success: function(url) {
		    	          $(el).summernote('editor.insertImage', url);
		    	          img =url;
		    	          $('#images').val(img);
		    	          
		    	        }
		    	      });
		    	    }
				
				
			});
		function category1(){
			var idx = $('#category').val();
			
			$.ajax({
				url : 'http://localhost:8080/nm/meeting/'+ idx,
				type : 'GET',
				success : function(data) {
					var html = '';
					var table = '';
					html += '<option selected>소분류 선택</option>';
					//console.log(data);
					for (var i = 0; i < data.length ; i++) {
				
						html += '<option value="'+ data[i].small_idx +'">'+ data[i].small_ca +'</option>';
						$('#small_idx').html(html);
					}
				
				}
			});
	
		}
		
		$('#form').submit(function(){
			var m_idx = ${m_idx};
			 var formData = new FormData();
				 formData.append("m_idx",$('#m_idx').val());
		        formData.append("small_idx",$('#small_idx').val());
		        formData.append("m_name",$('#m_name').val());
				formData.append("m_cont",$('#m_cont').val());
				alert($('#m_idx').val());
				alert($('#small_idx').val());
				alert($('#m_name').val());
				alert($('#m_cont').val());
				
			$.ajax({
				url : 'http://localhost:8080/nm/meeting/'+ m_idx,
				type : 'POST',
				data : formData,
				processData: false,
		        contentType: false,
				success : function(data) {
					
					alert('11');
					if(data == 1){
						alert('수정 완료');
						location.reload();
					}
					if(data == 0){
						alert('안댐');
					}
					
				}
				
			});
			return false; 		
		});
</script>
</html>