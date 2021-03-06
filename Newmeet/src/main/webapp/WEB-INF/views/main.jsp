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
	<span style="color:black;">모임보러가기</span>
	<span style="font-size:55px;font-weight:bold;color:black;font-family: 'Anton', sans-serif;"><a href="#" style="color:black;">  go!</a></span>
	</div>
	<div class="site-section site-section-sm site-blocks-1">
		<div class="container">
		<div style="float: right;"><a href="<c:url value="/moimList" />">전체보기</a></div>
			<div class="row" id="list">
				
			</div>
			
		</div>
	</div>

	<div class="site-section site-blocks-2">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0" data-aos="fade"
					data-aos-delay="">
					<a class="block-2-item" href="#">
						<figure class="image">
							<img src="images/women.jpg" alt="" class="img-fluid">
						</figure>
						<div class="text">
							<span class="text-uppercase">Collections</span>
							<h3>Women</h3>
						</div>
					</a>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="100">
					<a class="block-2-item" href="#">
						<figure class="image">
							<img src="images/children.jpg" alt="" class="img-fluid">
						</figure>
						<div class="text">
							<span class="text-uppercase">Collections</span>
							<h3>Children</h3>
						</div>
					</a>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="200">
					<a class="block-2-item" href="#">
						<figure class="image">
							<img src="images/men.jpg" alt="" class="img-fluid">
						</figure>
						<div class="text">
							<span class="text-uppercase">Collections</span>
							<h3>Men</h3>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="site-section block-3 site-blocks-2 bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>Featured Products</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="nonloop-block-3 owl-carousel">
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<img src="images/cloth_1.jpg" alt="Image placeholder"
										class="img-fluid">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">Tank Top</a>
									</h3>
									<p class="mb-0">Finding perfect t-shirt</p>
									<p class="text-primary font-weight-bold">$50</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<img src="images/shoe_1.jpg" alt="Image placeholder"
										class="img-fluid">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">Corater</a>
									</h3>
									<p class="mb-0">Finding perfect products</p>
									<p class="text-primary font-weight-bold">$50</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<img src="images/cloth_2.jpg" alt="Image placeholder"
										class="img-fluid">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">Polo Shirt</a>
									</h3>
									<p class="mb-0">Finding perfect products</p>
									<p class="text-primary font-weight-bold">$50</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<img src="images/cloth_3.jpg" alt="Image placeholder"
										class="img-fluid">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">T-Shirt Mockup</a>
									</h3>
									<p class="mb-0">Finding perfect products</p>
									<p class="text-primary font-weight-bold">$50</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<img src="images/shoe_1.jpg" alt="Image placeholder"
										class="img-fluid">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">Corater</a>
									</h3>
									<p class="mb-0">Finding perfect products</p>
									<p class="text-primary font-weight-bold">$50</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	<div class="site-section block-8">
		<div class="container">
			<div class="row justify-content-center  mb-5">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>Big Sale!</h2>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col-md-12 col-lg-7 mb-5">
					<a href="#"><img src="images/blog_1.jpg"
						alt="Image placeholder" class="img-fluid rounded"></a>
				</div>
				<div class="col-md-12 col-lg-5 text-center pl-md-5">
					<h2>
						<a href="#">50% less in all items</a>
					</h2>
					<p class="post-meta mb-4">
						By <a href="#">Carl Smith</a> <span class="block-8-sep">&bullet;</span>
						September 3, 2018
					</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Quisquam iste dolor accusantium facere corporis ipsum animi
						deleniti fugiat. Ex, veniam?</p>
					<p>
						<a href="#" class="btn btn-primary btn-sm">Shop Now</a>
					</p>
				</div>
			</div>
		</div>
	</div>

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
		url : '${pageContext.request.contextPath}/meeting/mainlist',
		type : 'GET',
		success : function(data) {
			
			var html = '';
			
			//console.log(data);
			for (var i = 0; i < data.length ; i++) {
				
				html += '<div id="mo" style="margin: 0 auto ;">';
				html += '<div>';
				html += '<a href="<c:url value="/moimInfo"/>?m_idx='+ data[i].m_idx +'"><img src="${pageContext.request.contextPath}/uploadfile/'+ data[i].m_img +'" style="width: 300px;height: 150px;"></a>';
				html += '</div>';
				html += '<div style="text-align: center;">';
				html += '<h2 class="text-uppercase" style="margin-top: 15px;">'+ data[i].m_name +'</h2>';
				html += '<span style="margin-right:10px;"><img src="${pageContext.request.contextPath}/uploadfile/like0.png"> '+ data[i].m_like +'</span>';
				html += '<span> <img src="${pageContext.request.contextPath}/uploadfile/star1.png"> '+ (data[i].m_stotal/data[i].m_star).toFixed(1) +'</span>';
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