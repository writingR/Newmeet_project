<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
	<title>Insert title here</title>
</head>
<body>
	
	<form action="writeProcess" method="post" >
		<input type="hidden" value="${mNum}" name="mNum" required>
		제목
		<input type="text" name="title">
		
    	<textarea id="summernote" name="content" required></textarea>
		
		<input type="hidden" name="img" id="images">
		
		<input type="number" name="star">
		
		<input type="submit" value="작성하기">
	</form>
	
</body>

<script>
	var img = "";
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
    	        url: '/nm/image',
    	        cache: false,
    	        contentType: false,
    	        enctype: 'multipart/form-data',
    	        processData: false,
    	        success: function(url) {
    	          $(el).summernote('editor.insertImage', url);
    	          img ='<img src="'+url+'" width="480" height="auto"/>';
    	          $('#images').val(img);
    	        }
    	      });
    	    }
    	
    });

    
</script>
