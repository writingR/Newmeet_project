<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<%@include file="/WEB-INF/views/frame/link.jsp"%>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->

<!-- datetimepicker js, css-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/datetimepicker/build/jquery.datetimepicker.min.css">
<script src="<c:url value="/datetimepicker/jquery.js" />"></script>
<script src="<c:url value="/datetimepicker/moment.min.js" />"></script>
<script src="<c:url value="/datetimepicker/ko.js" />"></script>
<script src="<c:url value="/datetimepicker/build/jquery.datetimepicker.full.min.js" />"></script>



    <style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:400px;}
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
  margin-top: 270px;
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
	width: 300px;
	margin: 10px;
}

.progress {
	margin: 30px 0;
	
}

#calSidebar {
	width: 450px;
	border: 1px solid #ddd;
	height: 780px;

}

#calLists {
	width: 430px;
	margin: 0 auto;
	height: 700px;
	overflow: scroll;
	
}

.calList {
	padding: 10px;
	border-bottom: 1px solid #ddd;
}

.calList>h4 {
	color: black;
	font-weight: bold;
	
}

.calList:hover {
	background-color: #ddd;
	border: 1px solid black;
}

#detailDiv {
}

#detailInfo tr>td {
	padding: 7px;

}


#detailInfo tr>td:nth-child(1) {
	color: #9E9E9E;
}

#detailInfo tr>td:nth-child(2) {
	color: black;
}

#listdown:hover {
	background-color: #ddd;
}

#calJoinListLabel {
	font-size: 16px;
}

#calJoinModal {
	height: 400px;
}

</style>
</head>
<body>
	<%@include file="/WEB-INF/views/frame/header2.jsp"%>
	<%@include file="/WEB-INF/views/frame/nav.jsp"%>


<!-- 	<form id="regform"> -->
	<!-- 버튼을 생성한다 해당하는 버튼은 데이터 토글은 모달, 데이터 타겟은 exampleModal의 아이디를 가지는 div 입니다.  -->
	<!-- 참고로, class data-target, data-toggle과 같은것은 애트리뷰트 라고 합니다. -->
	
	<div id="calSidebar">
	<p id="choiceChk" style="display:none;"></p>
	<div id="calLists">
	
	</div>
	<div id="calListFooter">
	
	</div>
	</div>
	
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
					<h5 style="text-align: center;" class="inputMsg">기본정보 입력</h5>
					<div class="progress">
						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:30%">
						</div>
					
					</div>
					
					<label for="c_title">정모 이름</label>
					<input class="basic" id="c_title" type="text" placeholder="20자를 초과할 수 없습니다.">
					<br>
					<label for="c_pay">참가 금액</label>
					<input class="basic" id="c_pay" type="text" placeholder="10만원 이상 초과할 수 없습니다.">
					<br>
					<label for="c_peoples">참가 인원</label>
					<select class="basic" id="c_count">
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
					<h5 style="text-align: center;" class="inputMsg">장소를 검색하여 선택해 주세요.</h5>
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
						<h5 style="text-align: center;"> 선택하신 장소가 맞는지 확인해주세요. </h5>
						<label for="c_place">장소</label>
						<input class="cmap" id="c_place" type="text" class="basic">
						<br>
						<label for="c_address">주소</label>
						<input class="cmap" id="c_address" type="text" class="basic">
						
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
					<h5 style="text-align: center;" class="inputMsg"> 날짜를 선택해 주세요.</h5>
					<div class="progress">
						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:90%">
						</div>
					</div>
					    <label for="c_date">모임 날짜</label> 
					    <input type="text" id="c_date" class="basic">
					    
						<br>
    					<label for="c_edate">신청 마감</label>
    					<input type="text" id="c_edate" class="basic">
						
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
					<h5 style="text-align: center;" class="">상세 정보</h5>

 					<input id="c_Eidx"><br>
					<input id="m_Eidx"><br>
					<input id="c_Etitle"><br>
					<input id="c_Epay"><br>
					<input id="c_Ecount"><br>
					<input id="c_Eplace"><br>
					<input id="c_Eaddress"><br>
					<input id="c_Edate"><br>
					<input id="c_Eedate"><br>
 					
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
					<h5 class="modal-title" id="calJoinListLabel">참여자 목록</h5>
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
	


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f6e7a0224aef6815285d474f26a6c0d6&libraries=services"></script>

<script>

	$(document).ready(function(){
		calList(100);
    
	});

	
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
	

	 
	 // 일정등록 마지막 단계 finish 누르면 입력한 폼데이터로 ajax 처리
	function calRegist() {
		
		$.ajax({
			
			url: 'http://localhost:8080/nm/cal',
			type: 'post',
			data: {
				m_idx : 100,
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
					calList($('#m_Didx').text());
					
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
			
			url: 'http://localhost:8080/nm/cal/'+m_idx,
			type: 'get',
			dataType: 'json',
			success: function(data) {
				
				for(var i=0; i<data.length; i++) {
					
					var sysdate = new Date(data[i].c_date);
					var enddate = new Date(data[i].c_edate);
					
					var dateArray = (sysdate.toLocaleString().slice(0,-3)).split('.');
					var edate = (enddate.toLocaleString().slice(0,-3));
					
					/* document.write(sysdate.toISOString()); */
					if(today>data[i].c_date || today>data[i].c_edate) {
						html += '<div class="calList" id="calList" onclick="calDetail('+ data[i].c_idx + ')" style="background-color:#F8EFBA;">\n';
						html += '<h4>마감 | ' + data[i].c_title +'</h4>\n';
						html += '<h5>' + '일정\t' + dateArray[0]+'년'+dateArray[1]+'월'+dateArray[2]+'일'+dateArray[3]+'</h5>\n';
						html += '<h6>' + '참가 인원 : ' + data[i].c_count + '\t|\t신청마감일 : ' + edate + '</h6>\n';
						html += '</div><br>\n'; 
							
					} else {
						html += '<div class="calList" style="cursor:pointer" id="calList" onclick="calDetail('+ data[i].c_idx + ')">\n';
						html += '<h4>' + data[i].c_title +'</h4>\n';
						html += '<h5>' + '일정\t' + dateArray[0]+'년'+dateArray[1]+'월'+dateArray[2]+'일'+dateArray[3]+'</h5>\n';
						html += '<h6>' + '참가 인원 : ' + data[i].c_count + '\t|\t신청마감일 : ' + edate + '</h6>\n';
						html += '</div><br>\n'; 
					}
					
					
				}
				
				btn += '<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#calRegist01" style="width:300px; margin-left: 60px; margin-top: 10px;" >일정 등록</button>';
				btn += '<button type="button" class="btn btn-primary" data-toggle="modal" style="width:300px; margin-left: 60px; margin-top: 10px;" onclick="(calJoin())">참여 하기</button>';
				
				$('#calLists').html(html);
				$('#calListFooter').html(btn);
			}
			
		});
		
	}
	
	// 일정 클릭 시 해당 일정에 대한 상세 페이지 모달 보기
	function calDetail(c_idx) {
		
		$('#calDetail').modal('show');
		
		var btn = '';
		var content = '';
		
		$.ajax({
			
			url: 'http://localhost:8080/nm/cal/ByIdx/'+c_idx,
			type: 'get',
			dataType: 'json',
			success: function(data) {
				
				var sysdate = new Date(data.c_date);
				var enddate = new Date(data.c_edate);
				
				var dateArray = (sysdate.toLocaleString().slice(0,-3)).split('.');
				var edate = (enddate.toLocaleString().slice(0,-3));
				
				
				
				content += '<table id="detailInfo">';
				content += '<tr>'
				content += '<td colspan="2"><h3>모임 정보</h3></td>\n<br>';
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
				content += '<td colspan="2" id="joinInfoMsg"><h3>참가 정보</h3></td>\n<br>';
				content += '</tr>'
				content += '<tr>';
				content += '<td><h5>참가비용</h5></td>';
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
				
				
				btn += "<button type='button' class='btn btn-secondary' onclick="+"(calEditForm("+c_idx+"))"+">수정</button>"
				btn += "<button type='button' class='btn btn-primary' onclick="+"(calDelete("+c_idx+"))"+">삭제</button>"
				
				btn += "<button type='button' class='btn btn-primary' onclick="+"(calChoice())"+">선택</button>"
	
				$('#detailModal').html(content);
				$('#detail-footer').html(btn);
			}
			
		});
		
	}
	
	function calJoinList(c_idx) {
		
		$('#calJoinList').modal('show');
		
		var content = '';
		
		$.ajax({
			
			url: 'http://localhost:8080/nm/calMember/'+c_idx,
			type: 'get',
			dataType: 'json',
			success: function(data) {
				
				content += '<h5> 총 참여자 수: '+ data.length + '<h5><br>';
				
				for(var i=0; i<data.length; i++) {
					content += '<h5>' + data[i].nemail +'\t'+ data[i].nnic + '</h5>\n';
						
				}

				$('#joinlistModal').html(content);
			}
			
			
		});
	}
	
	// 일정 상세 페이지에서 삭제 버튼 클릭시 ajax 처리
	function calDelete(c_idx) {
		
		var delconfirm = confirm('정말 삭제하시겠습니까?');
		
		if(delconfirm) {
			
			$.ajax({
			
				url: 'http://localhost:8080/nm/cal/'+c_idx,
				type: 'delete',
				/* dataType: 'json', */
				success: function(data) {
					if(data=='success') {
						alert('삭제되었습니다.');
						$('#calDetail').modal('hide');
						calList();
						
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
			
			url: 'http://localhost:8080/nm/cal/ByIdx/'+c_idx,
			type: 'get',
			dataType: 'json',
			success: function(data) {
/* 				
				editData += '<div id="editData>"\n';
				editData += '<form id="editForm>"\n';
				editData += '<h5>'+c_idx+'</h5>\n';
				editData += '<h5>'+data.m_idx+'</h5>\n';
				editData += '<h5>'+data.c_title+'</h5>\n';
				editData += '<h5>'+data.c_pay+'</h5>\n';
				editData += '<h5>'+data.c_count+'</h5>\n';
				editData += '<h5>'+data.c_place+'</h5>\n';
				editData += '<h5>'+data.c_address+'</h5>\n';
				editData += '<h5>'+data.c_date+'</h5>\n';
				editData += '<h5>'+data.c_edate+'</h5>\n';
				editData += '</form>\n';
				editData += '</div>\n'; */
				
 				$('#c_Eidx').val(c_idx);
				$('#m_Eidx').val(data.m_idx);
				$('#c_Etitle').val(data.c_title);
				$('#c_Epay').val(data.c_pay);
				$('#c_Ecount').val(data.c_count);
				$('#c_Eplace').val(data.c_place);
				$('#c_Eaddress').val(data.c_address);
				$('#c_Edate').val(data.c_date);
				$('#c_Eedate').val(data.c_edate); 
				btn += "<button type='button' class='btn btn-primary' onclick="+"(calEdit("+c_idx+"))"+">수정</button>"
				btn += "<button type='button' class='btn btn-secondary'>이전</button>"
	
				$('#edit-footer').html(btn);
				/* $('#edit-body').html(editData); */
			}
			
		});
	}
	

	// 일정 수정폼에서 수정 버튼 클릭시 ajax 수정처리
	function calEdit(c_idx) {
		
		
		$.ajax({
			
			url: 'http://localhost:8080/nm/cal/'+c_idx,
			type: 'put',
			data: JSON.stringify({
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
					calList();
					$('#calEditForm').modal('hide');
					
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
		
		html += '<div class="calList" style="background-color: #ddd;" id="calList">\n';
		html += '<h4>' + $('#c_Dtitle').text() + '</h4>\n';
		html += '<img id="listdown" src="<c:url value="/static/img/listdown.png" />" onclick="calChoiceChk(); calList('+$('#m_Didx').text()+');" style="float:right; cursor:pointer;">\n';
		html += '<h5>' + $('#c_Ddate').text() + '</h5>\n';
		html += '<h6>' + '참가 인원 : ' + $('#c_Dcount').text() + '\t|\t신청마감일 : ' + $('#c_Dedate').text() + '</h6>\n';
		html += '</div><br>\n';
		
		
		$('#calLists').html(html);
		$('#calDetail').modal('hide');
	}
	

	
	/* 일정 참여하기 시 일정 멤버 목록에 추가 */
	function calJoin() {
		
		sessionStorage.setItem("MemberIdx", "100");
		
		var c_idx = $('#c_Didx').text();
		var nidx = sessionStorage.getItem("MemberIdx");
		
		if(nidx==null) {
			alert('로그인이 필요한 서비스 입니다.');
			
		} else if(($('#choiceChk').text())=='') {
			alert('일정을 선택해주세요.');
			
		} else {
			
			$.ajax({
			
				url: 'http://localhost:8080/nm/calMember',
				type: 'post',
				data: {
					c_idx : c_idx,
					nidx : nidx
				},
				success: function(data) {
					if(data=='success') {
						alert('참가신청이 완료되었습니다.');
					
					} else {
						
						alert('이미 참여한 일정입니다.');
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
	<%-- <%@include file="/WEB-INF/views/frame/sc.jsp"%> --%>

</body>
</html>

                 