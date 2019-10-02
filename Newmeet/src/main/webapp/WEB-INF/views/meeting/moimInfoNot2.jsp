<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Ecoland - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"> -->
	<link href="https://fonts.googleapis.com/css?family=Gothic+A1|Nanum+Gothic|Nanum+Gothic+Coding|Nanum+Myeongjo|Sunflower:300&display=swap" rel="stylesheet">

<!-- 	 	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
     <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link href="https://fonts.googleapis.com/css?family=Raleway&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet"> -->
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/fonts/icomoon/style.css">
<%-- 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
 --%>    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/jquery-ui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/aos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/style.css">
    




    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/ionicons.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/detail/css/style.css">
    
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

	<!-- datetimepicker js, css-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/datetimepicker/build/jquery.datetimepicker.min.css">
	<script src="<c:url value="/datetimepicker/jquery.js" />"></script>
	<script src="<c:url value="/datetimepicker/moment.min.js" />"></script>
	<script src="<c:url value="/datetimepicker/ko.js" />"></script>
	<script src="<c:url value="/datetimepicker/build/jquery.datetimepicker.full.min.js" />"></script>
    
    
        <style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:370px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>
    
<style>
*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;}
</style>

<style>
.modal.modal-center {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal.modal-center:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog.modal-center {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
	width: 600px;
}

.modal-title {
	font-size: 40px;
	font-weight: bold;
}

.inputMsg {
	font-size: 30px;
}

.modal-content {
	height: 800px;
}

.modal-footer {
	margin: 0 auto;
}

input::placeholder {
	color: #ddd;
}

.basic {
	width: 350px;
	margin: 10px;
	padding: 2px;
}

#c_count {
	margin: 10px;
	width: 100px;
}


#calRegForm01 {
	margin-left: 50px;
	font-size: 20px;
}
#calRegForm01>label {
	padding-bottom: 20px;
}

#calRegForm03 {
	margin-left: 50px;
	font-size: 20px;
}
#calRegForm03>label {
	padding-bottom: 20px;
}

.progress {
	margin: 30px 0;
}

#calSidebar {
	width: 400px;
	border: 1px solid #ddd;
	height: 750px;
	border-radius: 10px;
}

#calLists {
	width: 380px;
	margin: 0 auto;
	margin-top: 20px;
	height: 580px;
	overflow: scroll;
	border-bottom: 1px solid #ddd;
}

.calList {
	padding: 10px;
	border: 1px solid gray;
	border-radius: 10px;
	margin-bottom: 10px;
}

.calList>h4 {
	color: black;
	font-weight: bold;
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 20px;
}

.calList>h5 {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 17px;
}

.calList>h6 {
	font-size: 15px;
}

.calList:hover {
	background-color: #E1C0BB;
}

#calMain {
	background-color: white !important;
	width: 400px !important;
	padding: 0 !important;
	position: fixed;
	margin-left: 800px;
}




#detailDiv {
	width: 600px;
	height: 700px;
	
}

#detailInfo {
	margin-top: 20px;
	margin-left: 20px;
}

#detailInfo tr>td {
	padding: 7px 15px;
	
}

#calJoinListInfo tr>td {
	padding: 7px 15px;
	
}


#detailInfo tr>td:nth-child(1)>h5 {
	color: #9E9E9E !important;
}

#detailInfo tr>td:nth-child(2)>h5 {
	color: black !important;
}

#listdown:hover {
	background-color: #ddd;
}

#calJoinListLabel {
	font-size: 16px;
}

#calJoinModal {
	height: 400px;
	width: 400px;
}

#listMsg {
	font-family: 'Nanum Gothic', sans-serif;
	padding: 20px 20px;
	color: white;
	font-weight: bold;
	border-bottom: 1px solid #ddd;
}

#edit-Form {
	font-size: 18px;
	margin-left: 30px;
	height: 520px;
}
#edit-Form>label {
	padding: 0 30px;
}

</style>
    
	
    
    <style>
    .star1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
 	}
	.star2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
	}
	.star1.on{background-position:0 0;}
	.star2.on{background-position:-15px 0;}
	
	#sin:hover{
		background-color:black;
		color:rgba(255,255,255,0.8);
		border: 1px solid white;
	}
	
	#sin{
	background-color: rgba(255,255,255,0.3); 
	border:1px solid black; 
	cursor: pointer;
	}
    </style>
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  <%@include file="/WEB-INF/views/frame/header.jsp"%>
	  

    <section class="ftco-section" style="padding: 0px !important;">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-8 pr-lg-4">
    				<div class="row">
    					<div align="center">
		    			<div class="col-md-12 col-lg-12 ftco-animate">
		    				<div class="project">
		    					<div class="img">
		    						<div class="vr"></div>
				    				<a href="#"><img src="${pageContext.request.contextPath}/uploadfile/${m_img}" class="img-fluid" alt="Colorlib Template"></a>
			    				</div>
			    				<div class="text">
			    					<h4 class="price">New Meet</h4>
			    					<span></span>
			    					<h3>${m_name}</h3>
			    					<div class="star d-flex clearfix" style="margin-left: 31rem;">
			    						<div class="star">
		<span class="star1" onclick="star(0.5)">별1_왼쪽</span>
		<span class="star2" onclick="star(1)">별1_오른쪽</span>
		<span class="star1" onclick="star(1.5)">별2_왼쪽</span>
		<span class="star2" onclick="star(2)">별2_오른쪽</span>
		<span class="star1" onclick="star(2.5)">별3_왼쪽</span>
		<span class="star2" onclick="star(3)">별3_오른쪽</span>
		<span class="star1" onclick="star(3.5)">별4_왼쪽</span>
		<span class="star2" onclick="star(4)">별4_오른쪽</span>
		<span class="star1" onclick="star(4.5)">별5_왼쪽</span>
		<span class="star2" onclick="star(5)">별5_오른쪽</span>
	</div><form id="form">
	<table>
	<tr>
		<td><span id="star"></span></td>
		<td><input type="submit" value="CLICK" style="border:1px solid rgba(255,255,255,0.2);background-color:rgba(255,255,255,0.2); "></td>
	</tr>
	</table>
	</form>
	
	
			    						<div class="float-right">
			    							
			    						</div>
			    					</div>
			    				</div>
			    				<div style="float: right; margin-top: 10px;">
			    				<span id="button" ></span>
				                <span id="button2"></span>
				                </div>
			    				<a href="${pageContext.request.contextPath}/uploadfile/${m_img}" class="icon image-popup d-flex justify-content-center align-items-center">
			    					<span class="icon-expand"></span>
			    				</a>
		    				</div>
		    			</div>
		    			</div>
		    			<div style="margin-left: 650px; margin-top: -28px;"><span class="rate2" style="margin-right: 10px;"></span><span class="rate"></span></div>
		    			
		    			
		    		</div>
		    		<hr>
		    		<div>
		    		<h2>INTRO</h2>
		   			<table id="memlisttable" class="table table-borderless" style="width: 100%;">
						<thead class="thead-light">
							
						</thead>
						<tbody>
						<tr>
						<td>${m_cont}</td>
						</tr>
						</tbody>

						</table>
		    			
		    			
		    		
		    		</div>
		    		<hr>
		    		<div>
		    		<h2>Member</h2>
		   			<table id="memlisttable" class="table table-borderless" style="width: 100%;">
						<thead class="thead-light">
							
						</thead>
						<tbody id="memlist">
							
						
						</tbody>

						</table>
		    			
		    			<a style="height:52px; font-size:18px; border-radius:5px;" href="${pageContext.request.contextPath}/meetMember?m_idx=${m_idx}" class="btn btn-outline-primary btn-block">View more</a>
		    		
		    		</div>
		    		<hr>
		    		<div>
		    		<h2>Review</h2>	
		    			<a style="height:52px; font-size:18px; border-radius:5px;" href="${pageContext.request.contextPath}/review?mNum=${m_idx}" class="btn btn-outline-primary btn-block">Review</a>
		    		</div>
		    		<hr>
		    		<div>	
		    		<h2>Chat</h2>
		    			<a style="height:52px; font-size:18px; border-radius:5px;" href="${pageContext.request.contextPath}/chat/${m_idx}" class="btn btn-outline-primary btn-block">Chat</a>
		    		</div>
		    		<hr>
		    		<div>
		    			<form id="meetCrew" method="post">
							<div class="form-group">
								<input type="hidden" id="m_idx" name="m_idx">
							</div>
							<div class="form-group">
								<input type="hidden" id="nidx" name="nidx">
							</div>
							<div class="form-group">
								<input type="hidden" id="mm_level" name="mm_level" value="0">
							</div>
							<div id="memShell" class="form-group">
							
							</div>
						</form>
		    		</div>
		    		
    			</div> <!-- end -->
    <div class="col-lg-4 p-4 bg-light" id="calMain">
    					
    					<!-- 	<form id="regform"> -->
	<!-- 버튼을 생성한다 해당하는 버튼은 데이터 토글은 모달, 데이터 타겟은 exampleModal의 아이디를 가지는 div 입니다.  -->
	<!-- 참고로, class data-target, data-toggle과 같은것은 애트리뷰트 라고 합니다. -->
	
	<div id="calSidebar">
	<p id="choiceChk" style="display:none;"></p>
	<div style="background-color: #4b6584; border-radius: 10px 10px 0 0;">
	<h4 id="listMsg">일정</h4>
	</div>
	<div id="calLists">
	
	</div>
	<div id="calListFooter">
	
	</div>
	</div>
							
		        </div>
    			</div> <!-- end -->
    		</div>
    </section>
    
    	<div class="modal modal-center fade" id="calDetail" tabindex="-1" role="dialog"
		aria-labelledby="calDetailLabel" aria-hidden="true">
	
		<div class="modal-dialog modal-center modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="calDetail">일정 상세</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" id="detailModal">
					<!-- 모달 내용 -->
				</div>
				
				<div class="modal-footer" id="detail-footer">
					<!-- data-dismiss="modal"를 통해 모달을 닫을수 있다. -->

				</div>
			</div>
		</div>
	</div>
	
	<!-- 기본정보 - 정모 이름, 참가비, 참가인원 입력 받는다. -->
	<!-- class를 통해 모달을 선언하고 투명에서 밝아지는 효과(fade)를 준다. 여기서 가장 중요한거는 id 입니다. 위에 타겟과 동일해야 합니다. #은 아이디 .은 클래스 -->
	<div class="modal modal-center fade" id="calRegist01" tabindex="-1" role="dialog"
		aria-labelledby="calRegisLabel01" aria-hidden="true">
		<!-- class를 주목하시면  여기 클레스에 modal-lg, modal-sm을 입력하시면 스몰 모달, 라지 모달로 선언이 가능 합니다. -->
		<!-- 위에 설명 예 : <div class="modal-dialog modal-sm" role="document"> -->
	
		<div class="modal-dialog modal-center modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="calRegisLabel01">일정 등록 1/3</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					
					<!-- 모달 내용 -->
					<h5 style="text-align: center; margin-top: 30px; color:#10ac84;" class="inputMsg">기본정보 입력</h5>
					<hr style="width:300px;">
					<div class="progress">
						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:30%">
						</div>
					
					</div>
					<div id="calRegForm01">
					<label for="c_title">정모 이름</label>
					<input style="margin-top:50px;" class="basic" id="c_title" type="text" placeholder="20자를 초과할 수 없습니다.">
					<br>
					<label for="c_pay">참가 금액</label>
					<input class="basic" id="c_pay" type="text" placeholder="10만원 이상 초과할 수 없습니다.">
					<br>
					<label for="c_peoples">참가 인원</label>
					<select id="c_count">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
					</select>
				</div>
				</div>
				<div class="modal-footer">
					<!-- data-dismiss="modal"를 통해 모달을 닫을수 있다. -->
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="resetReg()">닫기</button>
					<button type="button" class="btn btn-primary" onclick="next01()">다음</button>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 카카오맵 API - 장소와 주소를 입력 받는다. -->
	<div class="modal modal-center fade" id="calRegist02" tabindex="-1" role="dialog"
		aria-labelledby="calRegisLabel02" aria-hidden="true">
		<!-- class를 주목하시면  여기 클레스에 modal-lg, modal-sm을 입력하시면 스몰 모달, 라지 모달로 선언이 가능 합니다. -->
		<!-- 위에 설명 예 : <div class="modal-dialog modal-sm" role="document"> -->
		<div class="modal-dialog modal-center modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="calRegisLabel02">일정 등록 2/3</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- 모달 내용 -->
					<h5 style="text-align: center; margin-left: 30px; margin-top: 30px; color:#10ac84; border-bottom: 1px solid #ddd; width:500px;" class="inputMsg">키워드로 장소를 검색해 주세요.</h5>
					
					<div class="progress">
						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:66%">
						</div>
					</div>
						<div class="map_wrap">
							<div id="map"
								style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

							<div id="menu_wrap" class="bg_white">
								<div class="option">
									<div>
										<form onsubmit="searchPlaces(); return false;">
											키워드 : <input type="text" id="keyword"
												size="15">
											<button type="submit">검색하기</button>
										</form>
									</div>
								</div>
								<hr>
								<ul id="placesList"></ul>
								<div id="pagination"></div>
							</div>
						</div>
						<h5 style="text-align: center; color:gray; padding:2px;"> 선택하신 장소가 정확한지 확인해주세요. </h5>
						<label for="c_place" style="margin-left:30px;">장소</label>
						<input class="cmap" id="c_place" type="text" class="basic" style="width:150px;">
						<label for="c_address" style="margin-left:30px;">주소</label>
						<input class="cmap" id="c_address" type="text" class="basic" style="width:200px;">
						
				</div>
				<div class="modal-footer">
					<!-- data-dismiss="modal"를 통해 모달을 닫을수 있다. -->
					<button type="button" class="btn btn-secondary" onclick="previous01()">이전</button>
					<button type="button" class="btn btn-primary" onclick="next02()">다음</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- datepicker - 날짜 시간을 입력 받는다. -->
	<div class="modal modal-center fade" id="calRegist03" tabindex="-1" role="dialog"
		aria-labelledby="calRegisLabel03" aria-hidden="true">
		<div class="modal-dialog modal-center modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="calRegisLabel03">일정등록 3/3</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- 모달 내용 -->
					<h5 style="text-align: center; margin-top:30px; color:#10ac84;" class="inputMsg"> 날짜를 선택해 주세요.</h5>
					<hr style="width:300px;">
					<div class="progress">
						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:90%">
						</div>
					</div>
					
					<div id="calRegForm03">
					    <label style="margin-top:50px; margin-right:15px;" for="c_date">일정 날짜</label> 
					    <input type="text" id="c_date" class="basic" placeholder="여기를 클릭해 주세요.">
					    
						<br>
    					<label for="c_edate">신청 마감일</label>
    					<input type="text" id="c_edate" class="basic" placeholder="여기를 클릭해 주세요.">
					</div>
				</div>
				<div class="modal-footer">
					<!-- data-dismiss="modal"를 통해 모달을 닫을수 있다. -->
					<button type="button" class="btn btn-secondary" onclick="previous02()">이전</button>
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#calRegist2" onclick="calRegist()">등록 완료</button>
				</div>
			</div>
		</div>
	</div>


	<div class="modal modal-center fade" id="calEditForm" tabindex="-1" role="dialog"
		aria-labelledby="calEditFormLabel" aria-hidden="true">
	
		<div class="modal-dialog modal-center modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="calEditForm">일정 수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" id="edit-body">
					<!-- 모달 내용 -->
					<h4 style="color:#10ac84; border-bottom:1px solid #ddd; margin:20px;  font-size:30px;">일정 정보 수정</h4>

					<div id="edit-Form">
					<label style="margin-top:20px;" for="m_Eidx">모임 No.</label><input id="m_Eidx" class="basic" readonly style="background-color: #ddd;"><br>
 					<label for="c_Eidx">일정 No. </label><input id="c_Eidx" class="basic" readonly style="background-color: #ddd;"><br>
					<label for="c_Etitle">정모 이름</label><input id="c_Etitle" class="basic"><br>
					<label for="c_Epay">참가 금액</label><input id="c_Epay" class="basic"><br>
					<label for="c_Ecount">참가 인원</label>
					<select class="basic" id="c_Ecount">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
					</select><br>
					<label for="c_Eplace">모임 장소</label><input id="c_Eplace" class="basic" readonly style="background-color: #ddd;"><br>
					<label for="c_Eaddress">모임 주소</label><input id="c_Eaddress" class="basic" readonly style="background-color: #ddd;"><br>
					<label for="c_Edate">모임 날짜</label> 
					<input type="text" id="c_Edate" class="basic">    
					<br>
    				<label for="c_Eedate">신청 마감</label>
    				<input type="text" id="c_Eedate" class="basic">
 					</div>
				</div>
				
				<div class="modal-footer" id="edit-footer">
					<!-- data-dismiss="modal"를 통해 모달을 닫을수 있다. -->

				</div>
			</div>
		</div>
	</div>
	
	<div class="modal modal-center fade" id="calJoinList" tabindex="-1" role="dialog"
		aria-labelledby="calJoinListLabel" aria-hidden="true">
	
		<div class="modal-dialog modal-center modal-sm" role="document">
			<div class="modal-content" id="calJoinModal">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="calJoinListLabel" style="font-weight: bold; font-size:16px;">참여자 목록</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" id="joinlistModal">
					<!-- 모달 내용 -->
					
					
				</div>
				
				<div class="modal-footer">
					<!-- data-dismiss="modal"를 통해 모달을 닫을수 있다. -->

				</div>
			</div>
		</div>
	</div>
	<!-- modal end -->
    
<%--     
    <%@ include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@ include file="/WEB-INF/views/frame/sc.jsp"%>
     --%>
    

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<%-- 
  <script src="${pageContext.request.contextPath}/static/detail/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/static/detail/js/google-map.js"></script>
  
  <script src="${pageContext.request.contextPath}/static/detail/js/main.js"></script>
   --%>
  <script>
  var m_idx = ${m_idx};
  var nidx = ${nidx};
  
  	$(document).ready(function(){
  		
  		getsubmit(m_idx, nidx);
  		
			memberlist(m_idx);
			
			calList(m_idx);
  		
  		$('#m_idx').val(${m_idx});
			
  		if(${empty nidx}) {
  			$('#memIn').hide();
  		} else {
  			$('#nidx').val(${nidx});
  			$('#memIn').show();
  				
  		}
  		
 
  		
  		$('#meetCrew').submit(function(){
				alert($('#meetCrew').serialize());
			
				$.ajax({
					url : '${pageContext.request.contextPath}/meetmember',
					type : 'POST',
					data : $('#meetCrew').serialize(),
					success : function(data) {
						alert('모임에 참가했습니다.');
						memberlist(m_idx);
						location.reload();
					}
				});
			return false;
			});
  		
  			$.ajax({
  				url : '${pageContext.request.contextPath}/meeting/list/'+ m_idx,
  				type : 'GET',
  				success : function(data) {
  					var html = '';
  					var like = '';
  					
  						html += (data.m_stotal/data.m_star).toFixed(1)+' <img src="${pageContext.request.contextPath}/uploadfile/star0.png">';
  						$('.rate2').html(html);
  						like +=  data.m_like ;
  						like += '<c:if test="${l_like == 0}">';
  						like += ' <img onclick="like(${m_idx})" src="${pageContext.request.contextPath}/uploadfile/like0.png">';
  						like += '</c:if>';
  						like += '<c:if test="${l_like == 1}">';
  						like += ' <img onclick="like(${m_idx})" src="${pageContext.request.contextPath}/uploadfile/like1.png">';
  						like += '</c:if>';
  						
  						$('.rate').html(like);
  					
  						
  				}
  			});
  			
  			$.ajax({
  				url : '${pageContext.request.contextPath}/meeting/button/'+ m_idx,
  				type : 'GET',
  				success : function(data) {
  					var html = '';
  					var html2 = '';
  					if(data == 2){
  						//alert('넌 모임장이지');
  						html += '<a href="<c:url value="/moimedit"/>?m_idx=${m_idx}" style="border:1px solid black; display:inline-block; width:48px; height:32px; margin:5px; background-color:black; color:white;">수정</a>';
						html2 += '<input type="button" onclick="moimdelete()" style="background-color: rgba(255,255,255,0.3); border:1px solid black; cursor: pointer;" value="삭제">';
  						$('#button2').html(html2);
  						$('#button').html(html);
  					}else if(data == 1){
  						//alert('넌 모임원');
  						html += '<input type="button" id="sin" value="모임 탈퇴">';
  						
  						$('#button').html(html);
  					}else if(data == 0){
  						//alert('넌 비모임원');
  						html += '<input type="button" id="sin" value="모임 신청">';
  						
  						$('#button').html(html);
  					}else if(data == -1){
  						//alert('넌 로그인도안함');
  						
  						html += '<input type="button" style="background-color: rgba(255,255,255,0.3); border:1px solid black; cursor: pointer;" value="로그인해라">';
  						
  						$('#button').html(html);
  					}
  					
  				}
  			});
  			
  			});
  			
  			function moimdelete(){
  				var m_idx = ${m_idx};
  				if(confirm('모임을 삭제하시겠습니까 ?')){
  					$.ajax({
  	  					
  	  					url : '${pageContext.request.contextPath}/meeting/'+ m_idx,
  	  					type : 'DELETE',
  	  					success : function(data) {
  	  						
  	  						if(data == 1){
  	  							alert('삭제완료 ~')
  	  							location.href="/nm/moimList";
  	  						}else{
  	  							alert('삭제안댐')
  	  						}
  	  						
  	  					}
  	  				
  	  			});
  				}else{
  					return false;
  				}
  				
  				
  			}
  				
  			
  			function star(star){
  				var star = star;
  				var html = '';
  				html += '<input type="hidden" value="${m_idx}" id="m_idx" name="m_idx">';
  				html += '<input type="hidden" step="0.1" value="'+ star +'" id="ms_spoint" name="ms_spoint">';
  				
  				$('#star').html(html);
  				
  			}
  			function like(){
  				var m_idx = ${m_idx};
  				
  				$.ajax({
  					url : '${pageContext.request.contextPath}/like/'+ m_idx,
  					type : 'GET',
  					success : function(data) {
  						
  						if(data == -1){
  							alert('로그인해주세요~');
  						}else if(data == 0){
  							alert('잘안댐');
  						}else if(data == 1){
  							
  							location.reload();
  							
  						}
  				
  					}
  				});
  			}
  			
  			$('.star span').click(function(){
  				  $(this).parent().children('span').removeClass('on');
  				  $(this).addClass('on').prevAll('span').addClass('on');
  				  return false;
  				});
  			
  			$('#form').submit(function(){
  				
  				$.ajax({
  					url : '${pageContext.request.contextPath}/star',
  					type : 'POST',
  					data : $('#form').serialize(),
  					success : function(data) {
  						
  						if(data == -1){
  							alert('로그인 해라');
  						}else if(data == 0){
  							alert('별점은 한번만 줄수잇음');
  						}else if(data == 1){
  							alert('별점 주기 완료');
  							location.reload();
  							
  						}
  					}
  					
  				});
  				return false; 		
  			});
  			
  		
  			function memberlist(i) {
  	  			$.ajax({
  	  				url: '${pageContext.request.contextPath}/meetmember/'+i,
  					type: 'GET',
  					data: {},
  					success: function(data){
  						console.log(data);
  						var html = '';
  						if(data.mmList.length>=1) {
  							for (var i=0; i<data.mmList.length; i++) {
  								html += '<tr>';
  								html += '<td><img src="${pageContext.request.contextPath}/uploadfile/'+data.mmList[i].nphoto+'" alt="Image" style="height:50px; width:50px;"></td>';
  								html += '<td style="width:20%;">'+data.mmList[i].nnic+'</td>';
  								html += '<td style="width:60%;">'+data.mmList[i].nemail+'</td>';
  								html += '</tr>';
  						
  								$('#memlist').html(html);
  								}
  							}
  						}
  	  			});
  	  		}
  	  		
  	  		function getsubmit(i, e) {
  	  			
  	  			$.ajax({
  	  				url : '${pageContext.request.contextPath}/meetmember/submit/'+i+'/'+e,
  	  				type : 'GET',
  	  				success : function(data) {
  	  					var html = '';
  	  					if(data == 1) {
  	  						
  	  						html += '<input id="memOut" style="height:52px; font-size:18px; border-radius:5px;" type="button" onclick="memberOut('+i+','+e+')" class="btn btn-outline-danger btn-block" value="Participate out">';
  	  						$('#memShell').html(html);
  	  					} else if(data == 0) {
  	  						html += '<input id="memIn" style="height:52px; font-size:18px; border-radius:5px;" type="submit" class="btn btn-outline-success btn-block" value="Participate in">';
  	  						$('#memShell').html(html);
  	  					}
  	  				}
  	  			});
  	  		}
  	  		
  	  		function memberOut(i,e) {
  	  			
  	  			if(confirm('모임을 탈퇴하시겠어요?')); {
  	  				
  	  				$.ajax({
  	  					url : '${pageContext.request.contextPath}/meetmember/outself/'+i+'/'+e,
  	  					type : 'DELETE',
  	  					success: function(data) {
  	  						alert(data);
  	  						if(data == 'success') {
  	  							alert('모임을 탈퇴했습니다.');
  	  							memberlist(m_idx);
  	  							location.reload();
  	  						}
  	  					}
  	  				});
  	  			}
  	  		}
  	  		
  	  		function insertmember() {
  	  			$('#meetCrew').submit();
  	  		}
  	  		
  	  		function deletemember() {
  	  			memberOut(m_idx, nidx);
  	  		}
  
  </script>
  
  
<script>
/* 
	$(document).ready(function(){
		calList(100);
    
	});
 */
	
	/* 다음 버튼 클릭 시 모달 동작 */
	function next01() {
		$('#calRegist01').modal('hide');
		$('#calRegist02').modal('show');
	}
	
	/* 일정등록2 show 동작 시 카카오맵 relayout */
	$('#calRegist02').on('shown.bs.modal', function () {
		relayout();
	});
	
	
	function next02() {
		$('#calRegist02').modal('hide');
		$('#calRegist03').modal('show');
		
	}
	
	/* 이전 버튼 클릭 시 모달 동작 */
	function previous01() {
		$('#calRegist01').modal('show');
		$('#calRegist02').modal('hide');
	}
	
	function previous02() {
		$('#calRegist02').modal('show');
		$('#calRegist03').modal('hide');
	}
	
	/* 닫기 버튼 클릭 시 모달 폼 초기화 */
	function resetReg() {
	  $('#regform')[0].reset();
	}

	/* datetimepicker 설정 */
	jQuery.datetimepicker.setLocale('ko');
	
	/* 모임 일정 날짜  */
	jQuery('#c_date').datetimepicker({
		  format:'Y.m.d H:i',
		  /* theme:'dark', */
		  
		  /* inline:true */
	});
	
	/* 신청 마감일 날짜 */
	jQuery('#c_edate').datetimepicker({
		  format:'Y.m.d H:i',
		  /* theme:'dark', */
		  
		  /* inline:true */
	});
	
	/* 모임 일정 날짜 수정 */
	jQuery('#c_Edate').datetimepicker({
		  format:'Y.m.d H:i',
		  /* theme:'dark', */
		  
		  /* inline:true */
	});
	
	/* 신청 마감일 날짜 수정 */
	jQuery('#c_Eedate').datetimepicker({
		  format:'Y.m.d H:i',
		  /* theme:'dark', */
		  
		  /* inline:true */
	});

	 
	 // 일정등록 마지막 단계 finish 누르면 입력한 폼데이터로 ajax 처리
	function calRegist() {
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/cal',
			type: 'post',
			data: {
				m_idx : m_idx,
				c_title : $('#c_title').val(),
				c_pay : parseInt($('#c_pay').val()),
				c_count : $('#c_count').val(),
				c_place : $('#c_place').val(),
				c_address : $('#c_address').val(),
				c_date : $('#c_date').val(),
				c_edate : $('#c_edate').val()
			},
            /* dataType : 'json', */
			success : function(data) {
				console.log(data);
				if(data=='success') {
					alert('일정이 성공적으로 등록되었습니다.');
					$('#calRegist03').modal('hide');

					/* resetReg(); */
					calList(m_idx);
					
				}
			}
		});
	}
	
	 // 일정 리스트 ajax 불러오기
	function calList(m_idx) {
		
		var html = '';
		var btn = '';
		
		var today = new Date();
		
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/cal/'+m_idx,
			type: 'get',
			dataType: 'json',
			success: function(data) {
				
				for(var i=0; i<data.length; i++) {
					
					var sysdate = new Date(data[i].c_date);
					var enddate = new Date(data[i].c_edate);
					
					var dateArray = (sysdate.toLocaleString().slice(0,-3)).split('.');
					var edate = (enddate.toLocaleString().slice(0,-3));
					
					/* document.write(sysdate.toISOString()); */
					if(today>data[i].c_date) {
						html += '<div class="calList" id="calList" onclick="calDetail('+ data[i].c_idx + ')" style="background-color:#ddd; cursor:pointer">\n';
						html += '<h4>종료 | ' + data[i].c_title +'</h4>\n';
						html += '<h5>' + '일정\t' + dateArray[0]+'년'+dateArray[1]+'월'+dateArray[2]+'일'+dateArray[3]+'</h5>\n';
						html += '<h6>' + '참가 인원 : ' + calJoinCount(data[i].c_idx) + '/' + data[i].c_count + '\t|\t신청마감일 : ' + edate + '</h6>\n';
						html += '</div>\n'; 
							
					} else if(data[i].c_count/calJoinCount(data[i].c_idx)==1 || today>data[i].c_edate) {
						html += '<div class="calList" id="calList" onclick="calDetail('+ data[i].c_idx + ')" style="background-color:#f7f1e3; cursor:pointer">\n';
						html += '<h4>마감 | ' + data[i].c_title +'</h4>\n';
						html += '<h5>' + '일정\t' + dateArray[0]+'년'+dateArray[1]+'월'+dateArray[2]+'일'+dateArray[3]+'</h5>\n';
						html += '<h6>' + '참가 인원 : ' + calJoinCount(data[i].c_idx) + '/' + data[i].c_count + '\t|\t신청마감일 : ' + edate + '</h6>\n';
						html += '</div>\n'; 
						
					} else {
						html += '<div class="calList" style="cursor:pointer" id="calList" onclick="calDetail('+ data[i].c_idx + ')">\n';
						html += '<h4>' + data[i].c_title +'</h4>\n';
						html += '<h5>' + '일정\t' + dateArray[0]+'년'+dateArray[1]+'월'+dateArray[2]+'일'+dateArray[3]+'</h5>\n';
						html += '<h6>' + '참가 인원 : ' + calJoinCount(data[i].c_idx) + '/' + data[i].c_count + '\t|\t신청마감일 : ' + edate + '</h6>\n';
						html += '</div>\n'; 
					}
					
					
				}
				if((CreateBtn(m_idx)) == 1) {
					btn += '<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#calRegist01" style="width:350px; height: 60px; margin-left: 25px; margin-top: 5px; font-size:24px;" >일정 등록</button>';
				} else {
					btn += '<button type="button" class="btn btn-primary" data-toggle="modal" style="width:350px; height: 60px; margin-left: 25px; margin-top: 5px; font-size:24px;" onclick="(calJoin())">참여 하기</button>';
				}
				
				
				$('#calLists').html(html);
				$('#calListFooter').html(btn);
			}
			
		});
		
	}
	
	// 모임멤버 레벨에 따라 일정 버튼을 생성하는 함수
	// 일정 등록/참여, 일정 수정,삭제/선택 버튼 구별
	function CreateBtn(m_idx) {
		
		var nidx = ${nidx};
		
		var CheckBtn = 0;
		
		if((mmChk(m_idx))==1) {
			
		$.ajax({
			
			url: '${pageContext.request.contextPath}/cal/button/'+m_idx,
			type: 'get',
			data: {
				nidx : nidx
			},
			dataType: 'json',
			async: false,
			success: function(data) {
				
				CheckBtn = data;
			}
			
		});

		return CheckBtn;
		
		}
		
	}
	
	function mmChk(m_idx) {
		
		var nidx = ${nidx};
		
		var chk = 0;
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/cal/mmChk/'+m_idx,
			type: 'get',
			data: {
				nidx : nidx
			},
			dataType: 'json',
			async: false,
			success: function(data) {
				
				chk = data;
			}
			
		});

		return chk;
		
	}
	 
	/* 리스트에 현재 참가중인 인원 수를 구해오는 기능
	return 으로 count를 전달받기때문에 동기 방식으로 구현 */
	function calJoinCount(c_idx) {
		
		var count = '';

		$.ajax({
			
			url: '${pageContext.request.contextPath}/calMember/count/'+c_idx,
			type: 'get',
			dataType: 'json',
			async: false,
			success: function(data) {
				count = data;
			}
			
		});

		return count;
		
	}
		
		
		
	
	 
	// 일정 클릭 시 해당 일정에 대한 상세 페이지 모달 보기
	function calDetail(c_idx) {
		
		$('#calDetail').modal('show');
		
		var btn = '';
		var content = '';
		var today = new Date();
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/cal/ByIdx/'+c_idx,
			type: 'get',
			dataType: 'json',
			success: function(data) {
				
				var sysdate = new Date(data.c_date);
				var enddate = new Date(data.c_edate);
				
				var dateArray = (sysdate.toLocaleString().slice(0,-3)).split('.');
				var edate = (enddate.toLocaleString().slice(0,-3));
				
				
				
				content += '<table id="detailInfo">';
				content += '<tr>'
				content += '<td colspan="2"><h3 style="color:#10ac84; border-bottom:1px solid #ddd;">모임 정보</h3></td>\n';
				content += '</tr>'
				content += '<tr>';
				content += '<td><h5>모임이름</h5></td>';
				content += '<td><h5 id="c_Dtitle">'+data.c_title+'</h5></td>';
				content += '</tr>';
				content += '<tr>';
				content += '<td><h5>모임장소</h5></td>';
				content += '<td><h5>'+data.c_place+'</h5></td>';
				content += '</tr>';
				content += '<tr>';
				content += '<td><h5>주소</h5></td>';
				content += '<td><h5>'+data.c_address+'</h5></td>';
				content += '</tr>';
				content += '<tr>';
				content += '<td><h5>모임예정일</h5></td>';
				content += '<td><h5 id="c_Ddate">'+dateArray[0]+'년'+dateArray[1]+'월'+dateArray[2]+'일'+dateArray[3]+'</h5></td>';
				content += '</tr>';
				content += '<tr>';
				content += '<td><h5>신청마감일</h5></td>';
				content += '<td><h5 id="c_Dedate">'+edate+'</h5></td>';
				content += '</tr>';
				content += '<tr>'
				content += '<td colspan="2" id="joinInfoMsg"><h3 style="color:#10ac84; border-bottom:1px solid #ddd;">참가 정보</h3></td>\n';
				content += '</tr>'
				content += '<tr>';
				content += '<td><h5 >참가비용</h5></td>';
				content += '<td><h5>'+data.c_pay+' 원</h5></td>';
				content += '</tr>';
				content += '<tr>';
				content += '<td><h5>참가인원</h5></td>';
				content += '<td><h5 id="c_Dcount">'+data.c_count+'</h5></td>';
				content += '</tr>';
				content += '<tr>';
				content += '<td><h5>참여자 목록</h5></td>';
				content += '<td><h5 onclick="(calJoinList('+data.c_idx+'))" style="cursor:pointer">보기</h5></td>';
				content += '</tr>';
				content += '</table>';
				content += '<h4 id="c_Didx" style="display:none;">'+c_idx+'</h4><br>\n';
				content += '<h4 id="m_Didx" style="display:none;">'+data.m_idx+'</h4><br>\n';
				
				/* 
				$('#c_Didx').val(c_idx);
				$('#m_Didx').val(data.m_idx);
				$('#c_Dtitle').val(data.c_title);
				$('#c_Dpay').val(data.c_pay);
				$('#c_Dcount').val(data.c_count);
				$('#c_Dplace').val(data.c_place);
				$('#c_Daddress').val(data.c_address);
				$('#c_Ddate').val(data.c_date);
				$('#c_Dedate').val(data.c_edate); 
				*/
				
/* 				
				if(today>data.c_date || today>data.c_edate || data.c_count/calJoinCount(data.c_idx)==1) {
					btn += "<button type='button' class='btn btn-primary' onclick="+"(calEditForm("+c_idx+"))"+">수정</button>"
					btn += "<button type='button' class='btn btn-secondary' onclick="+"(calDelete("+c_idx+"))"+">삭제</button>"
				} else {
					btn += "<button type='button' class='btn btn-primary' onclick="+"(calEditForm("+c_idx+"))"+">수정</button>"
					btn += "<button type='button' class='btn btn-secondary' onclick="+"(calDelete("+c_idx+"))"+">삭제</button>"
					btn += "<button type='button' class='btn btn-primary' onclick="+"(calChoice())"+">선택</button>"
				}
		 */
		 
			/* sessionStorage.setItem("MemberIdx", "100"); */
			
			var nidx = ${nidx};
		 	
				if(today>data.c_date || today>data.c_edate ) {
					btn += '';
				} else if((CreateBtn(m_idx)) == 1){
					btn += "<button type='button' class='btn btn-primary' onclick="+"(calEditForm("+c_idx+"))"+">수정</button>";
					btn += "<button type='button' class='btn btn-secondary' onclick="+"(calDelete("+c_idx+"))"+">삭제</button>";
				} else {
					if((calJoinChk(data.c_idx,nidx)) == 'exist') {
						btn += "<button type='button' class='btn btn-secondary' onclick="+"(calCancelMember("+c_idx+","+nidx+"))"+">참가취소</button>";
					} else {
						btn += "<button type='button' class='btn btn-primary' onclick="+"(calChoice())"+">선택</button>";
					}
				}
				
				$('#detailModal').html(content);
				$('#detail-footer').html(btn);
			}
			
		});
		
	}
	
	/* 일정에 참가한 참여자 리스트 불러오기 */
	function calJoinList(c_idx) {
		
		$('#calJoinList').modal('show');
		
		var content = '';
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/calMember/'+c_idx,
			type: 'get',
			dataType: 'json',
			success: function(data) {
				
				content += '<table id="calJoinListInfo">';
				content += '<tr>'
				content += '<td colspan="2"><h5 style="color:#10ac84; border-bottom:1px solid #ddd;">총 참여자 수: '+ data.length + '</h5></td>\n';
				content += '</tr>'
				content += '<tr>';
				content += '<td><h5>아이디</h5></td>';
				content += '<td><h5>닉네임</h5></td>';
				content += '<td><h5>작업</h5></td>';
				content += '</tr>';
				
				for(var i=0; i<data.length; i++) {
					content += '<tr>';
					content += '<td><h5>' + data[i].nemail +'</h5></td>';
					content += '<td><h5>' + data[i].nnic +'</h5></td>';
					if((CreateBtn(m_idx)) == 1) {
						content += '<td><button type="button" class="btn btn-secondary" onclick="(calBanMember('+data[i].cm_idx+","+ c_idx+'))">추방</button></td>';
					} else {
						content += '<td></td>';
					}
					content += '</tr>';
				
				}

				$('#joinlistModal').html(content);
			}
			
			
		});
	}
	
	/* 모임장이 일정에 참가한 참여자를 추방시 삭제 처리 */
	function calBanMember(cm_idx, c_idx) {
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/calMember/'+cm_idx,
			type: 'delete',
			/* dataType: 'json', */
			success: function(data) {
				
				if(data=='success') {
					alert('추방 처리 하였습니다.');
					calJoinList(c_idx);
					calList($('#m_Didx').text());
				}
				
			}
		});
	}
	
	/* 일정상세보기 에서 일정참여/취소 버튼 구분 */
	function calJoinChk(c_idx, nidx) {
		
		var chk = '';
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/calMember/'+c_idx+'/'+nidx,
			type: 'get',
			/* dataType: 'json', */
			async: false,
			success: function(data) {
				console.log(data);
				chk = data;
				
			}
		});
		
		return chk;
	}
	
	/* 일정 참여자가 일정상세보기에서 참가취소시 삭제 처리 */
	function calCancelMember(c_idx, nidx) {
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/calMember/'+c_idx+'/'+nidx,
			type: 'delete',
			/* dataType: 'json', */
			success: function(data) {
				
				if(data=='success') {
					alert('참가 취소되었습니다.');
					calDetail(c_idx);
					calList($('#m_Didx').text());
				}
				
			}
		});
	}
	
	
	// 일정 상세 페이지에서 삭제 버튼 클릭시 ajax 처리
	function calDelete(c_idx) {
		
		var delconfirm = confirm('정말 삭제하시겠습니까?');
		
		if(delconfirm) {
			
			$.ajax({
			
				url: '${pageContext.request.contextPath}/cal/'+c_idx,
				type: 'delete',
				/* dataType: 'json', */
				success: function(data) {
					if(data=='success') {
						alert('삭제되었습니다.');
						$('#calDetail').modal('hide');
						calList(m_idx);
						
					}
				}
			
			
			});
		}
	}
	
	

	// 일정 상세 페이지에서 수정 버튼 클릭시 ajax 수정폼 불러오기
	function calEditForm(c_idx) {
		
		$('#calEditForm').modal('show');
		
		var btn = '';
		var editData = '';
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/cal/ByIdx/'+c_idx,
			type: 'get',
			dataType: 'json',
			success: function(data) {

				var sysdate = new Date(data.c_date);
				var enddate = new Date(data.c_edate);
				
				var mdate = (sysdate.toLocaleString().slice(0,-3));
				var edate = (enddate.toLocaleString().slice(0,-3));
			
				var dateArray = (sysdate.toLocaleString().slice(0,-3)).split('.');
				var edateArray = (enddate.toLocaleString().slice(0,-3)).split('.');
				/* var edate = (enddate.toLocaleString().slice(0,-3)); */
				
				/* alert(dateArray[3].replace(dateArray[3].slice(0, 3), '')); */
				
					/* html += '<h5>' + '일정\t' + dateArray[0]+'년'+dateArray[1]+'월'+dateArray[2]+'일'+dateArray[3]+'</h5>\n'; */
				
 				$('#c_Eidx').val(c_idx);
				$('#m_Eidx').val(data.m_idx);
				$('#c_Etitle').val(data.c_title);
				$('#c_Epay').val(data.c_pay);
				$('#c_Ecount').val(data.c_count);
				$('#c_Eplace').val(data.c_place);
				$('#c_Eaddress').val(data.c_address);
				$('#c_Edate').val(dateArray[0].replace(' ', '')+'.'+dateArray[1].replace(' ', '')+'.'+dateArray[2].replace(' ', '') + dateArray[3].replace(dateArray[3].slice(0, 3), ''));
				$('#c_Eedate').val(edateArray[0].replace(' ', '')+'.'+edateArray[1].replace(' ', '')+'.'+edateArray[2].replace(' ', '') + edateArray[3].replace(edateArray[3].slice(0, 3), '')); 
				btn += "<button type='button' class='btn btn-primary' onclick="+"(calEdit("+c_idx+"))"+">수정</button>"
				btn += "<button type='button' class='btn btn-secondary' onclick='(editBack())'>이전</button>"
	
				$('#edit-footer').html(btn);
				/* $('#edit-body').html(editData); */
			
			}
			
		});
	}
	
	function editBack() {
		$('#calEditForm').modal('hide');
		
	}
	

	// 일정 수정폼에서 수정 버튼 클릭시 ajax 수정처리
	function calEdit() {
		
		
		$.ajax({
			
			url: '${pageContext.request.contextPath}/cal',
			type: 'put',
			data: JSON.stringify({
				c_idx : $('#c_Eidx').val(),
				m_idx : $('#m_Eidx').val(),
				c_title : $('#c_Etitle').val(),
				c_pay : $('#c_Epay').val(),
				c_count : $('#c_Ecount').val(),
				c_place : $('#c_Eplace').val(),
				c_address : $('#c_Eaddress').val(),
				c_date : $('#c_Edate').val(),
				c_edate : $('#c_Eedate').val()
			}),
			contentType: 'application/json; charset=UTF-8',
			success: function(data) {
				if(data=='success') {
					alert('수정되었습니다.');
					$('#calEditForm').modal('hide');
					$('#calDetail').modal('hide');
					calDetail($('#c_Didx').text());
					calList(m_idx);
						
				}
				
			}
			
		});
	}
	
	/* 일정 미선택시 #choiceChk 태그의 값을 초기화 */
	function calChoiceChk() {
		
		$('#choiceChk').text('');
	}
	
	/* 일정 상세페이지에서 선택 시 일정 리스트에 해당 일정만 표시 */
	/* choiceChk 태그에 'chkChkSuccess' 텍스트를 입력
	리스트로 돌아갈 시 choiceChk 태그 값 초기화 */
	function calChoice() {
 		
		var html = '';
		$('#choiceChk').text('chkSuccess');
		
		html += '<div class="calList" style="background-color: #E1C0BB;" id="calList">\n';
		html += '<h4>' + $('#c_Dtitle').text() + '</h4>\n';
		html += '<img id="listdown" src="<c:url value="/static/calendar/img/listdown.png" />" onclick="calChoiceChk(); calList('+$('#m_Didx').text()+');" style="float:right; cursor:pointer;">\n';
		html += '<h5>' + $('#c_Ddate').text() + '</h5>\n';
		html += '<h6>' + '참가 인원 : ' + $('#c_Dcount').text() + '\t|\t신청마감일 : ' + $('#c_Dedate').text() + '</h6>\n';
		html += '</div><br>\n';
		
		
		$('#calLists').html(html);
		$('#calDetail').modal('hide');
	}
	

	
	/* 일정 참여하기 시 일정 멤버 목록에 추가 */
	function calJoin() {
		
		/* sessionStorage.setItem("MemberIdx", "100"); */
		
		var c_idx = $('#c_Didx').text();
		var nidx = ${nidx};
		
		if(nidx==null) {
			alert('로그인이 필요한 서비스 입니다.');
			
		} else if(($('#choiceChk').text())=='') {
			alert('일정을 선택해주세요.');
			
		} else {
			
			$.ajax({
			
				url: '${pageContext.request.contextPath}/calMember',
				type: 'post',
				data: {
					c_idx : c_idx,
					nidx : nidx
				},
				success: function(data) {
					if(data=='success') {
						alert('참가신청이 완료되었습니다.');
					
					} else {
						
						alert('이미 참여중인 일정입니다.');
					}
				
				}
			
			});
		
		} 
		
	}
	
	
	/* $('#datetimepicker').datetimepicker().data('DateTimePicker').format('HH:mm:ss'); */
	
	/* Jquery - datepicker 사용 */
	/* 일정, 신청마감일 선택용도 */
/*     $(function() {
        //모든 datepicker에 대한 공통 옵션 설정
        $.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd' //Input Display Format 변경
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
            ,changeYear: true //콤보박스에서 년 선택 가능
            ,changeMonth: true //콤보박스에서 월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
        });

        //input을 datepicker로 선언
        $("#c_date").datepicker();                    
        $("#c_edate").datepicker();
        
        //From의 초기값을 오늘 날짜로 설정
        $('#c_date').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        //To의 초기값을 내일로 설정
        $('#c_edate').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
    });
	
 */
</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f6e7a0224aef6815285d474f26a6c0d6&libraries=services"></script>

<script>



// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        /* alert('키워드를 입력해주세요!'); */
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}


// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title, address) {
/*         	
             kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });
            
            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
             */
            
            kakao.maps.event.addListener(marker, 'click', function() {
                displayInfowindow2(marker, title, address);
            });
                         
            itemEl.onclick =  function () {
                displayInfowindow2(marker, title, address);
            };
            
        })(marker, places[i].place_name, places[i].road_address_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage,
            clickable: true
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 온오버했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

//검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
//인포윈도우에 장소명을 표시합니다
function displayInfowindow2(marker, title, address) {
 	var content = '<div style="padding:5px;z-index:1; color:red; text-weith: bold;">' + title + '</div>';

 	infowindow.setContent(content);
 	infowindow.open(map, marker, address);
 
 	calRegist02(title, address);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
 
 
 
//지도를 표시하는 div 크기를 변경하는 함수입니다
function resizeMap() {
    var mapContainer = document.getElementById('map');
    mapContainer.style.width = '300px';
    mapContainer.style.height = '300px'; 
}

function relayout() {    
    
    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
    map.relayout();
}

function calRegist02(title, address) {
	
	$('#c_place').val(title);
	$('#c_address').val(address);
}


</script>
  
  
  
  
  <script src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
  <%-- <script src="${pageContext.request.contextPath}/static/detail/js/jquery.min.js"></script> --%>
  <script src="<c:url value="/bootstrap/js/jquery-ui.js" />"></script>
  <%-- <script src="${pageContext.request.contextPath}/static/detail/js/jquery-migrate-3.0.1.min.js"></script> --%>
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/popper.min.js"></script>
  
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/scrollax.min.js"></script>
  
  <script src="${pageContext.request.contextPath}/static/calendar/detail/js/main.js"></script>

	
  
  
  </body>
</html>