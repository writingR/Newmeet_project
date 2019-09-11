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

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/css/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/css/aos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/review/css/style.css">
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
					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html"><img src="images/img_1.jpg" alt="Image"
								class="img-fluid rounded"></a>
							<div class="excerpt">
								<span class="post-category text-white bg-secondary mb-3">Politics</span>

								<h2>
									<a href="single.html">The AI magically removes moving
										objects from videos.</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">Carrol
											Atkinson</a></span> <span>&nbsp;-&nbsp; July 19, 2019</span>
								</div>

								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quo sunt tempora dolor laudantium sed optio, explicabo ad
									deleniti impedit facilis fugit recusandae! Illo, aliquid, dicta
									beatae quia porro id est.</p>
								<p>
									<a href="#">Read More</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html"><img src="images/img_2.jpg" alt="Image"
								class="img-fluid rounded"></a>
							<div class="excerpt">
								<span class="post-category text-white bg-success mb-3">Nature</span>

								<h2>
									<a href="single.html">The AI magically removes moving
										objects from videos.</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">Carrol
											Atkinson</a></span> <span>&nbsp;-&nbsp; July 19, 2019</span>
								</div>

								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quo sunt tempora dolor laudantium sed optio, explicabo ad
									deleniti impedit facilis fugit recusandae! Illo, aliquid, dicta
									beatae quia porro id est.</p>
								<p>
									<a href="#">Read More</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html"><img src="images/img_3.jpg" alt="Image"
								class="img-fluid rounded"></a>
							<div class="excerpt">
								<span class="post-category text-white bg-warning mb-3">Travel</span>

								<h2>
									<a href="single.html">The AI magically removes moving
										objects from videos.</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">Carrol
											Atkinson</a></span> <span>&nbsp;-&nbsp; July 19, 2019</span>
								</div>

								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quo sunt tempora dolor laudantium sed optio, explicabo ad
									deleniti impedit facilis fugit recusandae! Illo, aliquid, dicta
									beatae quia porro id est.</p>
								<p>
									<a href="#">Read More</a>
								</p>
							</div>
						</div>
					</div>


					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html"><img src="images/img_1.jpg" alt="Image"
								class="img-fluid rounded"></a>
							<div class="excerpt">
								<span class="post-category text-white bg-secondary mb-3">Politics</span>

								<h2>
									<a href="single.html">The AI magically removes moving
										objects from videos.</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">Carrol
											Atkinson</a></span> <span>&nbsp;-&nbsp; July 19, 2019</span>
								</div>

								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quo sunt tempora dolor laudantium sed optio, explicabo ad
									deleniti impedit facilis fugit recusandae! Illo, aliquid, dicta
									beatae quia porro id est.</p>
								<p>
									<a href="#">Read More</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html"><img src="images/img_2.jpg" alt="Image"
								class="img-fluid rounded"></a>
							<div class="excerpt">
								<span class="post-category text-white bg-success mb-3">Nature</span>

								<h2>
									<a href="single.html">The AI magically removes moving
										objects from videos.</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">Carrol
											Atkinson</a></span> <span>&nbsp;-&nbsp; July 19, 2019</span>
								</div>

								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quo sunt tempora dolor laudantium sed optio, explicabo ad
									deleniti impedit facilis fugit recusandae! Illo, aliquid, dicta
									beatae quia porro id est.</p>
								<p>
									<a href="#">Read More</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html"><img src="images/img_4.jpg" alt="Image"
								class="img-fluid rounded"></a>
							<div class="excerpt">
								<span class="post-category text-white bg-danger mb-3">Sports</span>

								<h2>
									<a href="single.html">The AI magically removes moving
										objects from videos.</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">Carrol
											Atkinson</a></span> <span>&nbsp;-&nbsp; July 19, 2019</span>
								</div>

								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quo sunt tempora dolor laudantium sed optio, explicabo ad
									deleniti impedit facilis fugit recusandae! Illo, aliquid, dicta
									beatae quia porro id est.</p>
								<p>
									<a href="#">Read More</a>
								</p>
							</div>
						</div>
					</div>


					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html"><img src="images/img_1.jpg" alt="Image"
								class="img-fluid rounded"></a>
							<div class="excerpt">
								<span class="post-category text-white bg-success mb-3">Nature</span>

								<h2>
									<a href="single.html">The AI magically removes moving
										objects from videos.</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">Carrol
											Atkinson</a></span> <span>&nbsp;-&nbsp; July 19, 2019</span>
								</div>

								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quo sunt tempora dolor laudantium sed optio, explicabo ad
									deleniti impedit facilis fugit recusandae! Illo, aliquid, dicta
									beatae quia porro id est.</p>
								<p>
									<a href="#">Read More</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html"><img src="images/img_2.jpg" alt="Image"
								class="img-fluid rounded"></a>
							<div class="excerpt">
								<span class="post-category text-white bg-danger mb-3">Sports</span>
								<span class="post-category text-white bg-secondary mb-3">Tech</span>

								<h2>
									<a href="single.html">The AI magically removes moving
										objects from videos.</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">Carrol
											Atkinson</a></span> <span>&nbsp;-&nbsp; July 19, 2019</span>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quo sunt tempora dolor laudantium sed optio, explicabo ad
									deleniti impedit facilis fugit recusandae! Illo, aliquid, dicta
									beatae quia porro id est.</p>
								<p>
									<a href="#">Read More</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-4">
						<div class="entry2">
							<a href="single.html"><img src="images/img_4.jpg" alt="Image"
								class="img-fluid rounded"></a>
							<div class="excerpt">
								<span class="post-category text-white bg-danger mb-3">Sports</span>
								<span class="post-category text-white bg-warning mb-3">Lifestyle</span>

								<h2>
									<a href="single.html">The AI magically removes moving
										objects from videos.</a>
								</h2>
								<div class="post-meta align-items-center text-left clearfix">
									<figure class="author-figure mb-0 mr-3 float-left">
										<img src="images/person_1.jpg" alt="Image" class="img-fluid">
									</figure>
									<span class="d-inline-block mt-1">By <a href="#">Carrol
											Atkinson</a></span> <span>&nbsp;-&nbsp; July 19, 2019</span>
								</div>

								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quo sunt tempora dolor laudantium sed optio, explicabo ad
									deleniti impedit facilis fugit recusandae! Illo, aliquid, dicta
									beatae quia porro id est.</p>
								<p>
									<a href="#">Read More</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row text-center pt-5 border-top">
					<div class="col-md-12">
						<div class="custom-pagination">
							<span>1</span> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
							<span>...</span> <a href="#">15</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>


	<%@include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>

	<script src="${pageContext.request.contextPath}/static/review/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/jquery.stellar.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/jquery.countdown.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/bootstrap-datepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/aos.js"></script>
	<script src="${pageContext.request.contextPath}/static/review/js/main.js"></script>



</body>
</html>