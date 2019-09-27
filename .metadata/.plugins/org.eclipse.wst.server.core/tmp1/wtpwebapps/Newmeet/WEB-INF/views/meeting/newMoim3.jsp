<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
     <%@include file="/WEB-INF/views/frame/link.jsp"%>
     <meta charset="UTF-8">
<title>모임 생성</title>
<style>
	#cont{
		margin: 0 auto;
		
	}
	#cont h1{
		margin-top: 20px;
		margin-bottom: 20px;
		text-align: center;
	}
	
	#select{
		width: 100%;
		height: 600px;
		background-color: silver;
		margin: 0 auto;
		position: relative;
		opacity: 0.8;
		background-image: url("uploadfile/base.png");
	}
	#select h2{
		color: #f5f6fa; 
		padding-top: 20px; 
		font-weight: bold;
		text-align: center;
		
	}
	#option{
		
	}
	form{
		margin: 0 auto;
	}
	input[type=button]{
		width: 100px;
		background-color: black;
		color: rgba(255,255,255,0.8);
		font-weight: bold;
		border-radius: 30px;
		border: 1px solid black;
		margin-right: 10px;
	}
	.category{
		margin-right: 20px;
		width: 300px;
	}
	#but{
		position: absolute;
		left: 1400px;
		top: 309px;
	}
	
	input[type=text]{
		width: 400px;
		height: 30px;
		font-size: 30px;
		border: 1px solid white;
		font-weight: bold;
	}
	.modal-backdrop{
		width: 50px;
		height: 50px;
	}
</style>
</head>
<body>
 <div class="site-wrap">
    <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center" >

         <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                <!-- <a href="index.html" class="js-logo-clone">Shoppers</a> -->
                <a href="main"><img alt="" src="${pageContext.request.contextPath}/static/img/logo.png" style="width:140px;height:140px;margin-left:510px;"></a>
            </div>

     <!--        <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
              <form action="" class="site-block-top-search">
                <span class="icon icon-search2"></span>
                <input type="text" class="form-control border-0" placeholder="Search">
              </form>
            </div> -->

           

            <div class="col-6 col-md-4 order-3 order-md-3 text-right">
              <div class="site-top-icons" style="width:300px;margin:0 700px;">
                <ul>
                  <li> 
                  <a href="<c:url value="/Welcome" />" style="font-family: 'Nanum Gothic Coding', monospace;color:black;font-weight:bold;">회원가입</a></button></li>
                  <li> 
                  <a href="<c:url value="/Login" />" style="font-family: 'Nanum Gothic Coding', monospace;color:black;font-weight:bold;">로그인</a></button></li>
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>

          </div>
        </div>
<!--         <input type="text" style="width:320px;padding:10px;border:2px solid black;border-radius:5px;" placeholder="원하시는 모임을 검색해주세요.">
        <i class="material-icons" style="font-size:26px;display:inline-block;">search</i> -->
      </div> 
 </header>
 </div>
 <div id="cont">
	<div id="select">
	<h2 style="margin-bottom: 20px;"><span style="background-color: #2d3436; opacity: 0.7;">INTRO</span></h2>
		<div id="option">
		<form style="width: 800px; margin: 0 auto;">
		<textarea id="summernote" name="m_cont" required"></textarea>
		<input type="hidden" name="img" id="images">
		</form>
    	 </div>           	
                	
		<div id="but">
		<input type="button" onclick="pre()" value="Pre">
		<input type="button" onclick="sum()" value="Next">
		</div>
	</div>
 </div>

                	
	<%@include file="/WEB-INF/views/frame/footer.jsp"%>				
</body>
<script>
	
	 $(document).ready(function() {
		 
		 
		 
		 
	    	$('#summernote').summernote({
	    		  height: 350,
	    		  width: 800,           // set editor height
	    		  minHeight: null,             // set minimum height of editor
	    		  maxHeight: 400,             // set maximum height of editor
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
 		if(m_cont==''){
 			alert('소개글을 작성해주세요');
 		}else{
 			sessionStorage.setItem("m_cont",m_cont);
 	 		location.href="/nm/newMoim4";
 		}
 	
 		
 	}

	 function pre(){
			
			location.href="/nm/newMoim2";
		}



		

	

</script>
</html>