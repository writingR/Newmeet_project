<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
 <%@include file="/WEB-INF/views/frame/link.jsp"%>
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
		text-align: center;
		
	}
	#cont h1{
		margin-top: 20px;
		margin-bottom: 20px;
	}
	
	#select{
		width: 100%;
		height: 200px;
		margin: 0 auto;
		position: relative;
		opacity: 0.8;
		background-image: url("uploadfile/base.png");
	}
	#select h2{
		color: #f5f6fa; 
		padding-top: 60px; 
		font-weight: bold;
		font-size: 55px;
		
	}
	#option{
		margin : 100px;
	}
	input[type=submit]{
	background-color: #bdc3c7;
		color: black;
		font-weight: bold;
		border-radius: 30px;
		border: 1px solid black;
		cursor: pointer;
	}
	
	input[type=button]{
		width: 100px;
		background-color: #bdc3c7;
		color: black;
		font-weight: bold;
		border-radius: 30px;
		border: 1px solid black;
		margin-right: 10px;
		cursor: pointer;
	}
	.category{
		margin-right: 20px;
		width: 300px;
		border: 1px solid white;
	}
	#but{
		position: absolute;
		left: 1400px;
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
<h2><span style="background-color: #2d3436; opacity: 0.7;"> 수정 페이지 </span></h2>

	</div>
 </div>
	<form id="form" style="background-color: width: ;">
	<input type="hidden" id="m_idx" name="m_idx" value="${m_idx}">
	
	<h4 style="margin-left: 46%; margin-top: 10px;">모임 카테고리</h4>
	<div style="margin-left: 44%; margin-bottom: 10px;">
	<select id="category" name="category" onclick="category1()"></select>
	<select id="small_idx" name="small_idx" ><option selected value="${small_idx}">소분류 선택</option></select>
	</div>
	<hr style="width: 600px;">
	<table style="margin: 0 auto; text-align: center;">
	<thead id="table">
		</thead>
		<tbody>
		<tr>
			<td ><h4 style="margin-top: 15px;">현재 모임 대표 사진</h4></td>
		</tr>
		<tr>
			<td><img src="${pageContext.request.contextPath}/uploadfile/${m_img}" style="width: 300px;height: 200px; border-radius: 5px;"><input style="margin-left: 10px;"type="button" value="사진변경" onclick="photo(${m_idx})"><hr></td>
		</tr>
		<tr>
			<td><h4 style="margin-top: 15px;">모임 제목</h4></td>
		</tr>
		<tr>
			<td><input type="text" id="m_name" name="m_name" value="${m_name}"><hr></td>
		</tr>
		<tr>
			<td><h4 style="margin-top: 15px;">모임 소개글</h4></td>
		</tr>
		<tr>
			<td><textarea id="m_cont" name="m_cont" required>${m_cont}</textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input style="margin-top: 15px; margin-bottom:15px; width: 600px;" type="submit" value="수정하기"></td>
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
	<%@include file="/WEB-INF/views/frame/footer.jsp"%>				
</body>
<script>
$(document).ready(function(){
	
		$.ajax({
			url : '${pageContext.request.contextPath}/meeting',
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
		        url: '${pageContext.request.contextPath}/meeting/photo',
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
		url : '${pageContext.request.contextPath}/meeting/'+ idx,
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
			url : '${pageContext.request.contextPath}/meeting/image',
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
		url : '${pageContext.request.contextPath}/meeting/'+ m_idx,
		type : 'POST',
		data : formData,
		processData: false,
	    contentType: false,
		success : function(data) {
		
			if(data == 1){
				alert('수정 완료');
				location.href="main";
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