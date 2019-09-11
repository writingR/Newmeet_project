<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>


<%
	session.setAttribute("loginKey", 17);
%>


<head>
<title>뉴밋</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,700|Playfair+Display:400,700,900"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/fonts/icomoon/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/css/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/css/aos.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/review/css/style.css">
<link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />
	
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<body>
	<%@include file="/WEB-INF/views/frame/header.jsp"%>
	<%@include file="/WEB-INF/views/frame/nav.jsp"%>
	
 
	<div class="site-wrap">

		<div class="py-5 bg-light">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<span>Category</span>
						<h3>Sports</h3>
						<p>Category description here.. Lorem ipsum dolor sit amet,
							consectetur adipisicing elit. Aliquam error eius quo, officiis
							non maxime quos reiciendis perferendis doloremque maiores!</p>
					</div>
				</div>
			</div>
		</div>


		<div class="site-section bg-white">
			<div class="container">
			
			
			
			
				<div class="row">
					
				</div>



				<div class="row">
					<!-- 정렬 -->
					
					<div class="col-md-12 mb-5">
						<div class="float-md-left mb-4">
							<h2 class="text-black h5">모임 후기 ${count}</h2>
						</div>
						<div class="d-flex">
							<div class="dropdown mr-1 ml-md-auto">
								<button type="button"
									class="btn btn-secondary btn-sm dropdown-toggle"
									id="dropdownMenuOffset" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">정렬하기</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
									<a class="dropdown-item" href="${pageContext.request.contextPath}/review?mNum=${moimNum}&sort=1">등록 순</a> <a
										class="dropdown-item" href="${pageContext.request.contextPath}/review?mNum=${moimNum}&sort=2">좋아요 순</a> <a
										class="dropdown-item" href="${pageContext.request.contextPath}/review?mNum=${moimNum}&sort=3">평점 순</a>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 정렬 -->
				
					<c:forEach items="${reviewList}" var="review" varStatus="stat">
					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html">${review.r_img}</a>
							<div class="excerpt">
								<span class="post-category text-white bg-secondary mb-3">Review</span>

								<h2>
									<a href="single.html">${review.r_title}</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="${pageContext.request.contextPath}/static/img/${review.nphoto}" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">
											${review.nnic}</a></span> <span>&nbsp;-&nbsp; ${review.r_date}</span>
								<div class="rating" id="rate${stat.index}" style="display:block;" title="${review.r_star}"></div>
								</div>
								
								<p>${fn:substring(review.r_content.replaceAll('(<([^>]+)>)',''),0,100)}</p>
								
							</div>
						</div>
					</div>
					</c:forEach>
					
					
					
					
				</div>
				
				<div class="row text-center pt-5 border-top">
					<div class="col-md-12">
					
						<div class="custom-pagination">
							
							<c:forEach var="변수" begin="1" end="10" step="1" >
							<span>1</span> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
							<span>...</span> <a href="#">15</a>
							</c:forEach>
							
							
							<button type="button" class="btn btn-dark" style="float: right;" onclick="location.href='${pageContext.request.contextPath}/review/write?mNum=${moimNum}'">작성하기</button>
						</div>
					</div>
				</div>
				
			</div>
		</div>

	</div>


	<%@include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>
	
<!-- you need to include the shieldui css and js assets in order for the charts to work -->
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script type="text/javascript">
	var str = 'rate';	
    initializeRatings();
    function initializeRatings() {
        for(var i = 0; i <= ${reviewList.size()}; i++){
	        $('#'+str+i).shieldRating({
	            max: 5,
	            step: 0.1,
	            markPreset: true,
	            value: $('#'+str+i).attr('title') ,
	            enabled: false
	        });
        }
    }
</script>


</body>
</html>