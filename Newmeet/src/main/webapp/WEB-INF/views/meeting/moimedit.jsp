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
<style>
.modal-content {
	width: 850px;
	margin-left: -150px;
	
}
</style>
</head>
<body>
	<h1> ${m_idx}수정 페이지 </h1>
	<form id="form">
	<input type="text" id="m_idx" name="m_idx" value="${m_idx}">
	<h4>모임 카테고리</h4>
	<select id="category" name="category" onclick="category1()">
                		
                	</select>
	<select id="small_idx" name="small_idx" ><option selected value="${small_idx}">소분류 선택</option></select>
	<table>
	<thead id="table">
		
		</thead>
		<tbody>
		<tr>
			<td>현재 모임 대표 사진</td>
		</tr>
		<tr>
			<td><img src="http://localhost:8080/nm/uploadfile/${m_img}" style="width: 300px;height: 200px;"><input type="button" value="사진변경" onclick="photo(${m_idx})"></td>
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
	<div class="modal fade" id="exampleModalLong" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">대표 이미지 수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						
					</button>
				</div>
				<div class="modal-body">
					<div id="mo"
						style="text-align: center; font-size: 20px; margin-bottom: 10px; margin-left: 20px">
					</div>
					
					<form id="imgform">
						<table>
						<tr>
							<td><input type="file" id="m_img" name="m_img"></td>
						</tr>
							
						</table>
					</form>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" onclick="imgform()">수정하기</button>
					
				</div>
			</div>
		</div>
	</div>
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
		function imgform(){
			var m_idx = ${m_idx};
			 var formData = new FormData();
			 formData.append("m_img",$('#m_img')[0].files[0]);
			 formData.append("m_idx",m_idx);
			 
			 $.ajax({
					url : 'http://localhost:8080/nm/meeting/image',
					type : 'POST',
					data : formData,
	    	        contentType: false,
	    	        processData: false,
					success : function(data) {
						if(data == 1){
							alert('수정 완료');
							location.reload();
						}
						if(data == 0){
							alert('안댐');
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
		
		function photo(m_idx){
			
			
			$('#exampleModalLong').modal();

					
		
			
		}
		
		
</script>
</html>