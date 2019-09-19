<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
</head>
<body>
<h1>모임을 생성하자</h1>
	
	<h2>모임 소개글 작성</h2>
		<br><br>
		<form>
		<textarea id="summernote" name="m_cont" required></textarea>
		<input type="hidden" name="img" id="images">
                	
					
					
					</form>
					<input type="button" onclick="sum()" value="Next">
</body>
<script>
	
	 $(document).ready(function() {
		 
		 
		 
		 
	    	$('#summernote').summernote({
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
	
	
	
	 function sum(){
 		
 		var m_cont = $('#summernote').val();
 		
 		sessionStorage.setItem("m_cont",m_cont);
 		alert(m_cont);
 		location.href="/nm/newMoim4";
 		
 	}





		

	

</script>
</html>