<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>


<%
	session.setAttribute("MemberIdx", 17);
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

	<div class="alert alert-danger alert-dismissible fade show"  style="display: none;" id="alertBar">
    	<button type="button" class="close" data-dismiss="alert">&times;</button>
    	<strong><b id="alertText"></b></strong>
	</div>

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
										class="dropdown-item" href="${pageContext.request.contextPath}/review?mNum=${moimNum}&sort=2">평점 순</a> <a
										class="dropdown-item" href="${pageContext.request.contextPath}/review?mNum=${moimNum}&sort=3">좋아요 순</a>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 정렬 -->
				
					<c:forEach items="${reviewList}" var="review" varStatus="stat">
					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="${pageContext.request.contextPath}/review/${review.r_idx}?mNum=${moimNum}"><img src="${review.r_img}" alt="Image" class="img-fluid rounded" style="width: 332px; height: 228px;"/></a>
							<div class="excerpt">
								<span class="post-category text-white bg-secondary mb-3">Review</span>

								<h2>
									<a href="${pageContext.request.contextPath}/review/${review.r_idx}?mNum=${moimNum}">${review.r_title}</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="${pageContext.request.contextPath}/uploadfile/${review.nphoto}" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="" style="pointer-events: none;">
											${review.nnic}</a></span> <span>&nbsp;-&nbsp; ${review.r_date}</span>
								<div class="rating" id="rate${stat.index}" style="display:block;" title="${review.r_star}"></div>
								</div>
								
								<p>${fn:substring(review.r_content.replaceAll('(<([^>]+)>)',''),0,30)}...</p>
								
								<div style="float: right; width: 30px"  id="likeButton">
									<c:set var="likeColor" value="likeWhite.png"></c:set>
									<c:if test="${review.rlike_state eq 1}">
										<c:set var="likeColor" value="likeDark.png"></c:set>
									</c:if>
									<img src="${pageContext.request.contextPath}/static/img/${likeColor}" style="float: left; margin: 3px 0px"  title="${review.r_idx}" name="${review.rlike_state}">
									<span style="float: right;">${review.r_like}</span>
								</div>
								
							</div>
						</div>
					</div>
					</c:forEach>
					
					
					
					
				</div>
				
				<div class="row text-center pt-5 border-top">
					<div class="col-md-12">
					
						<div class="custom-pagination">
							
							<a href="${pageContext.request.contextPath}/review?mNum=${moimNum}&page=1&sort=${sort}"><<</a>
							<c:forEach var="pNum" begin="${startPage}" end="${endPage}" step="1">
								<c:if test="${page eq pNum}">
									<span>${page}</span>
								</c:if>
								<c:if test="${page ne pNum}">
									<a href="${pageContext.request.contextPath}/review?mNum=${moimNum}&page=${pNum}&sort=${sort}">${pNum}</a>
								</c:if>
							</c:forEach>
							<a href="${pageContext.request.contextPath}/review?mNum=${moimNum}&page=${totalCount}&sort=${sort}">>></a>
							
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
<script src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script>
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
   
	$(document).ready(function(){

		 var err = ${errCode};
		
		<!-- 권한 alert start -->
		if(err!=0){
			$('#alertBar').css('display','block');
			if(err==1){
				$('#alertText').text('권한이 없습니다.');
			}
			if(err==2){
				$('#alertText').text('멤머 회원이 아닙니다.');
			}
		}
		<!-- 권한 alert end -->

		var span;
		$('#likeButton img').click(function(){
			var element = this;
			
			$.ajax({
				url : '/nm/review/like',
				type : 'GET',
				data : {
					rIdx : $(this).attr('title'),
				},
				success : function(data) {
					if(data==-1){
						alert("로그인후 이용해주세요.");
					}
					if(data==1){
						var text = parseInt($(element).next().text());
						if($(element).attr('name')=='1'){							
							$(element).attr('name',0);
							$(element).attr('src','/nm/static/img/likeWhite.png'); 
							$(element).next().text(text-1);
						}else{
							$(element).attr('name',1);
							$(element).attr('src','/nm/static/img/likeDark.png'); 
							$(element).next().text(text+1);
						}
					}
					
				}
			});
		});
	
	});
    
    
</script>


</body>
</html>