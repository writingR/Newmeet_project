<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<body>
	<%@include file="/WEB-INF/views/frame/header2.jsp"%>
	<%@include file="/WEB-INF/views/frame/nav.jsp"%>


	<!-- 버튼을 생성한다 해당하는 버튼은 데이터 토글은 모달, 데이터 타겟은 exampleModal의 아이디를 가지는 div 입니다.  -->
	<!-- 참고로, class data-target, data-toggle과 같은것은 애트리뷰트 라고 합니다. -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal">Launch demo modal</button>

	<!-- class를 통해 모달을 선언하고 투명에서 밝아지는 효과(fade)를 준다. 여기서 가장 중요한거는 id 입니다. 위에 타겟과 동일해야 합니다. #은 아이디 .은 클래스 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<!-- class를 주목하시면  여기 클레스에 modal-lg, modal-sm을 입력하시면 스몰 모달, 라지 모달로 선언이 가능 합니다. -->
		<!-- 위에 설명 예 : <div class="modal-dialog modal-sm" role="document"> -->
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- 모달 내용 -->
				</div>
				<div class="modal-footer">
					<!-- data-dismiss="modal"를 통해 모달을 닫을수 있다. -->
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
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
							<img src="<c:url value="/bootstrap/images/women.jpg" />" alt="" class="img-fluid">
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
							<img src="<c:url value="/bootstrap/images/children.jpg" />" alt="" class="img-fluid">
						</figure>
						<div class="text">
							<span class="text-uppercase">Collections</span>
							<h3>Children</h3>
						</div>
					</a>
				</div>

			</div>
		</div>
	</div>




	<%@include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>

</body>
</html>

                 