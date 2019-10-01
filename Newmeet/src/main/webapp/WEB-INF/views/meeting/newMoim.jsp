<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
 <%@include file="/WEB-INF/views/frame/link.jsp"%>
<meta charset="UTF-8">
<title>모임 생성</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
		height: 400px;
		margin: 0 auto;
		position: relative;
		background-image: url("uploadfile/base6.png");
		opacity: 0.8;
	}
	#select h2{
		color: #f5f6fa; 
		padding-top: 40px; 
		font-weight: bold;
		font-size: 55px;
		
	}
	#option{
		margin : 100px;
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
		border: 1px solid white;
	}
	#but{
		position: absolute;
		left: 1400px;
	}
	.site-navbar .site-navbar-top {
    display: none;
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
<div id="select" style="height: 530px;">
<h2><span style="background-color: #2d3436; opacity: 0.7;"> CATEGORY </span></h2>
<div id="option">
<select id="category" name="category" onclick="category()" class="category">	</select>
                	<select id="scategory" name="scategory" class="category">
                	<option selected>소분류 선택</option>
                	</select>
     </div>           	  	
					<div id="but">
					<input type="button" onclick="pre()" value="Pre">
					<input type="button" onclick="scategory()" value="Next">
					</div>
	</div>
 </div>
         	
	<%@include file="/WEB-INF/views/frame/footer.jsp"%>				
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
			
			if(idx=="소분류 선택"){
				alert('카테고리를 선택해주세요');
			}else{
				sessionStorage.setItem("small_idx",idx);
				location.href="/nm/newMoim2";
			}
			
			
			
		}
		
		function pre(){
			
			location.href="/nm/Mypage";
		}

	

</script>
</html>