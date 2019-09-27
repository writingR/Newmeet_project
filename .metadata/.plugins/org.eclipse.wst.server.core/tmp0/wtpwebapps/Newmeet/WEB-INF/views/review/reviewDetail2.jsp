<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>프립</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/css/style.css">
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


		<div class="site-cover site-cover-sm same-height overlay single-page"
			style="background-image: url('${pageContext.request.contextPath}/static/review/images/reviewDetail.jpg');">
			<div class="container">
			
				<!-- The Modal Start -->
				<div class="modal" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">
							
							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">Edit a comment</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>        
							
							<form action="${pageContext.request.contextPath}/review/editCommentProcess" method="post">
							<!-- Modal body -->
							<div class="modal-body">
								<div class="comment-form-wrap">								
								
									<input type="hidden" name="rdNum" id="rdNumInput">
									<input type="hidden" name="rNum" value="${rNum}">
									<input type="hidden" name="mNum" value="${moimNum}">
									<div class="form-group">
										<label for="message">Content</label>
										<textarea name="content" id="message" cols="30" rows="10"
											class="form-control"></textarea>
									</div>
									<div class="form-group">
										
									</div>

								
								</div>
							</div>		        
							<!-- Modal footer -->
							<div class="modal-footer">
									<input type="submit" value="수정하기" class="btn btn-info">
									<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
							</div>
							</form>     
						</div>
					</div>
				</div>
				<!-- The Modal End -->
			
				<div class="row same-height justify-content-center">
					<div class="col-md-12 col-lg-10">
						<div class="post-entry text-center">
							<span class="post-category text-white bg-success mb-3">Review</span>
							<h1 class="mb-4">
								<a href="#">${reviewDetail.r_title}</a>
							</h1>
							<div class="post-meta align-items-center text-center">
								<figure class="author-figure mb-0 mr-3 d-inline-block">
									<img src="${pageContext.request.contextPath}/uploadfile/${reviewDetail.nphoto}" alt="Image" class="img-fluid">
								</figure>
								<span class="d-inline-block mt-1">By ${reviewDetail.nnic}</span> <span>&nbsp;-&nbsp;
									${reviewDetail.r_date}</span>
									
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<section class="site-section py-lg">
			<div class="container">

				<div class="row blog-entries element-animate">

					<div class="col-md-12 col-lg-8 main-content">

						<div class="post-content-body">
							${reviewDetail.r_content}
						</div>


						<div class="pt-5">
							<div class="row">
								<h3 class="mb-5 col-sm-10">${count} Comments</h3>
								
								<h3 class="mb-5 col-sm-2" style="float: right; width: 30px"  id="likeButton">
									<c:set var="likeColor" value="likeWhite.png"></c:set>
									<c:if test="${reviewDetail.rlike_state eq 1}">
										<c:set var="likeColor" value="likeDark.png"></c:set>
									</c:if>
									<img src="${pageContext.request.contextPath}/static/img/${likeColor}" style="margin: 0px 5px; width: 20px; height: 20px;"  title="${reviewDetail.r_idx}" name="${reviewDetail.rlike_state}">
									<span>${reviewDetail.r_like}</span>
								</h3>
							</div>
							<ul class="comment-list">
							<c:forEach var="comment" items="${commentList}">
								<li class="comment">
									<div class="vcard">
										<img src="${pageContext.request.contextPath}/uploadfile/${reviewDetail.nphoto}" alt="Image placeholder">
									</div>
									<div class="comment-body">
										<h3>${comment.nnic}</h3>
										<div class="meta">${comment.rd_date}</div>
										<p id="commentContent${comment.rd_idx}">${comment.rd_content}</p>
										<p>

										  
											<a class="btn btn-success reply rounded mr-2" data-toggle="modal" data-target="#myModal" data-whatever="${comment.rd_idx}">Edit</a>
											<a href="${pageContext.request.contextPath}/review/deleteCommentProcess/${comment.rd_idx}?rNum=${reviewDetail.r_idx}&mNum=${moimNum}" class="btn btn-danger reply rounded"  onclick="return delcheck();">Delete</a>
										</p>
										<hr>
									</div>
								</li>
							</c:forEach>
							</ul>
							<div class="row">
							    <div class="col"></div>
								<div class="custom-pagination col">
									<c:if test="${totalCount ne 0}">
									<a href="${pageContext.request.contextPath}/review/${reviewDetail.r_idx}?mNum=${moimNum}"><<</a>
									</c:if>
									<c:forEach var="pNum" begin="${startPage}" end="${endPage}" step="1">
										<c:if test="${page eq pNum}">
											<span>${page}</span>
										</c:if>
										<c:if test="${page ne pNum}">
											<a href="${pageContext.request.contextPath}/review/${reviewDetail.r_idx}?mNum=${moimNum}&page=${pNum}">${pNum}</a>
										</c:if>
									</c:forEach>
									<c:if test="${totalCount ne 0}">
									<a href="${pageContext.request.contextPath}/review/${reviewDetail.r_idx}?mNum=${moimNum}&page=${totalCount}">>></a>
									</c:if>
								</div>
								<div class="col"></div>
							</div>
							<!-- END comment-list -->

							<div class="comment-form-wrap pt-5">
								<h3 class="mb-5">Leave a comment</h3>
								<form action="${pageContext.request.contextPath}/review/writeCommentProcess" class="p-5 bg-light" method="post">
									<input type="hidden" name="rNum" value="${rNum}">
									<input type="hidden" name="mNum" value="${moimNum}">
									<div class="form-group">
										<label for="message">Content</label>
										<textarea name="content" id="message" cols="30" rows="10"
											class="form-control"></textarea>
									</div>
									<div class="form-group">
										<input type="submit" value="댓글달기"
											class="btn btn-info">
									</div>

								</form>
							</div>
						</div>
					</div>
					<!-- END main-content -->

					<div class="col-md-12 col-lg-4 sidebar">
						
						<div class="sidebar-box">
							<div class="bio text-center">
								<img src="${pageContext.request.contextPath}/uploadfile/${reviewDetail.nphoto}" alt="Image Placeholder"
									class="img-fluid mb-5">
								<div class="bio-body">
									<h2>${reviewDetail.nnic}</h2>
									<div class="rating" id="rate" style="margin-left: 0; margin-bottom: 10px;" title="${reviewDetail.r_star}"></div>
									<div class="row">
									<p class="col">
									<p class="col">
										<a href="${pageContext.request.contextPath}/review/edit/${reviewDetail.r_idx}?mNum=${reviewDetail.m_idx}" class="btn btn-success btn-sm rounded px-4 py-2 mt-5">Edit</a>
									</p>
									<p class="col">
										<a href="${pageContext.request.contextPath}/review/delete/${reviewDetail.r_idx}?mNum=${reviewDetail.m_idx}" class="btn btn-danger btn-sm rounded px-4 py-2 mt-5"  onclick="return delcheck();">Delete</a>
									</p>
									<p class="col">
									</div>
								</div>
							</div>
						</div>
						<!-- END sidebar-box -->
						
						
							<div class="sidebar-box">
								<h3 class="heading">Recent Posts</h3>
								<div class="post-entry-sidebar">
									<ul>
										<c:forEach var="review" items="${recentReviewList}">
										<li><a href="${pageContext.request.contextPath}/review/${review.r_idx}?mNum=${moimNum}"> <img src="${review.r_img}"
												alt="Image placeholder" class="mr-4">
												<div class="text">
													<h4>${review.r_title}</h4>
													<div class="post-meta">
														<span class="mr-2">${review.r_date}</span>
													</div>
												</div>
										</a></li>
										</c:forEach>
									</ul>	
								</div>
								
								
							</div>
						<!-- END sidebar-box -->
						<div class="row">
							<p class="col"></p>
							<p class="col">
								<a href="${pageContext.request.contextPath}/review?mNum=${moimNum}" class="btn btn-primary btn-sm rounded px-4 py-2 mt-5">목록으로</a>
							</p>
							<p class="col"></div>
						</div>
						<!-- END sidebar -->

				</div>
			</div>
		</section>


	</div>
	
	<%@include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>


<script src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script>
	var str = 'rate';	
    initializeRatings();
    function initializeRatings() {
	    $('#rate').shieldRating({
	        max: 5,
	        step: 0.1,
	        markPreset: true,
	        value: $('#rate').attr('title') ,
	        enabled: false
	    });
        
    }

    function delcheck(){
        return confirm("후기를 삭제하시겠습니까?");
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
        

    	<!-- START LikeButton -->
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
		<!-- END LikeButton -->
		<!-- START Modal -->
		$('#myModal').on('show.bs.modal', function (event) {
			var button = $(event.relatedTarget);
			var recipient = button.data('whatever'); 
			
			var modal = $(this);
			modal.find('#rdNumInput').val(recipient);
			var content = $('#commentContent'+recipient).text();
			modal.find('#message').val(content);
				  
		});
		<!-- END Modal -->
			
		
		
	});
    
</script>
</body>
</html>