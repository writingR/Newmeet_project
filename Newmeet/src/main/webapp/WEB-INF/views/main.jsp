<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
<style>
</style>
</head>
<script type="text/javascript">
 
function main_popup(){
 
 window.open("popup","new","width=420, height=500, resizable=no, scrollbars=no, status=no, location=no, directories=no;");
}	
</script>
<body onload="main_popup()">
	
	
	<%@include file="/WEB-INF/views/frame/header.jsp"%>
	<%@include file="/WEB-INF/views/frame/nav.jsp"%>
	
	
	<div class="site-blocks-cover"
		style="background-image: url(static/img/mainN.png);" data-aos="fade">

<!-- 		<div class="container">
			<div
				class="row align-items-start align-items-md-center justify-content-end">
				<div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
					<h1 class="mb-2">Finding Your Perfect Shoes</h1>
					<div class="intro-text text-center text-md-left">
						<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Phasellus at iaculis quam. Integer accumsan
							tincidunt fringilla.</p>
						<p>
							<a href="#" class="btn btn-sm btn-primary">Shop Now</a>
						</p>
					</div>
				</div>
			</div>
		</div> -->
	</div>
	<div>
	<img src="static/img/main1.png">
	<span style="font-size:55px;font-weight:bold;color:black;font-family: 'Anton', sans-serif;"><a href="#" style="color:black;">  go!</a></span>
	</div>
	<div class="site-section site-section-sm site-blocks-1">
		
		<div class="container">
		<h1 style="text-align: center; color: black;">HOT MOIM</h1>
			<div class="row" id="list">
				
			</div>
			
		</div>
	</div>

	<%-- <div class="site-section site-blocks-2">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0" data-aos="fade"
					data-aos-delay="">
					<a class="block-2-item" href="<c:url value="/moimList" />">
						<figure class="image">
							<img src="uploadfile/base.png" alt="" class="img-fluid" style="height: 200px;">
						</figure>
						<div class="text">
							<h3>All List</h3>
						</div>
					</a>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="100">
					<a class="block-2-item" href="<c:url value="/likestar?likestar=1"/>">
						<figure class="image">
							<img src="uploadfile/base5.png" alt="" class="img-fluid" style="height: 200px;">
						</figure>
						<div class="text">
							<h3>Like</h3>
						</div>
					</a>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="200">
					<a class="block-2-item" href="<c:url value="/likestar?likestar=2"/>">
						<figure class="image">
							<img src="uploadfile/base8.png" alt="" class="img-fluid" style="height: 200px;">
						</figure>
						<div class="text">
							
							<h3>Star</h3>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div> --%>

	
	<%@include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>


 <script type="text/javascript">
      
 	jQuery(document).ready(function() {
                $('#myModal').show();
        });
        //팝업 Close 기능
        function close_pop(flag) {
             $('#myModal').hide();
        };
        
    </script>
<script>

$(document).ready(function(){

	$.ajax({
		url : 'http://localhost:8080/nm/meeting/mainlist',
		type : 'GET',
		success : function(data) {
			
			var html = '';
			
			//console.log(data);
			for (var i = 0; i < data.length ; i++) {
				
				html += '<div id="mo" style="margin: 0 auto ;">';
				html += '<div>';
				html += '<a href="<c:url value="/moimInfo"/>?m_idx='+ data[i].m_idx +'"><img src="http://localhost:8080/nm/uploadfile/'+ data[i].m_img +'" style="width: 300px;height: 150px;"></a>';
				html += '</div>';
				html += '<div style="text-align: center;">';
				html += '<h2 class="text-uppercase" style="margin-top: 15px;">'+ data[i].m_name +'</h2>';
				html += '<span style="margin-right:10px;"><img src="http://localhost:8080/nm/uploadfile/like0.png"> '+ data[i].m_like +'</span>';
				html += '<span> <img src="http://localhost:8080/nm/uploadfile/star1.png"> '+ (data[i].m_stotal/data[i].m_star).toFixed(1) +'</span>';
				html += '</div>';
				html += '</div>';
				$('#list').html(html);
				
			} 
				
		}
	});
	
	}); 


</script>

</body>
</html>