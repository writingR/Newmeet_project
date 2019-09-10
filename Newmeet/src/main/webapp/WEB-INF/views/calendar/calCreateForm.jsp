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
  width: 800px;
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

</style>
</head>
<body>
	<%@include file="/WEB-INF/views/frame/header2.jsp"%>
	<%@include file="/WEB-INF/views/frame/nav.jsp"%>

	<form id="regform">
	<!-- 버튼을 생성한다 해당하는 버튼은 데이터 토글은 모달, 데이터 타겟은 exampleModal의 아이디를 가지는 div 입니다.  -->
	<!-- 참고로, class data-target, data-toggle과 같은것은 애트리뷰트 라고 합니다. -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#calRegist01">일정 등록</button>
	
	<!-- 기본정보 - 정모 이름, 참가비, 참가인원 입력 받는다. -->
	<!-- class를 통해 모달을 선언하고 투명에서 밝아지는 효과(fade)를 준다. 여기서 가장 중요한거는 id 입니다. 위에 타겟과 동일해야 합니다. #은 아이디 .은 클래스 -->
	<div class="modal modal-center fade" id="calRegist01" tabindex="-1" role="dialog"
		aria-labelledby="calRegisLabel01" aria-hidden="true">
		<!-- class를 주목하시면  여기 클레스에 modal-lg, modal-sm을 입력하시면 스몰 모달, 라지 모달로 선언이 가능 합니다. -->
		<!-- 위에 설명 예 : <div class="modal-dialog modal-sm" role="document"> -->
	
		<div class="modal-dialog modal-center" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="calRegisLabel01">일정 등록</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- 모달 내용 -->
					<h5 style="text-align: center;">기본정보 입력</h5>
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
		<div class="modal-dialog modal-center" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="calRegisLabel02">일정 등록</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- 모달 내용 -->
					<h5 style="text-align: center;">장소를 검색하여 선택해 주세요.</h5>
					<div class="progress">
						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:66%">
						</div>
					</div>
					카카오맵
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
		<div class="modal-dialog modal-center" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<!-- 모달 이름 -->
					<h5 class="modal-title" id="calRegisLabel03">날짜와 시간을 선택해주세요.</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- 모달 내용 -->
					<h5 style="text-align: center;">기본정보 입력</h5>
					<div class="progress">
						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:90%">
						</div>
					</div>
					    <label for="c_date">모임 날짜</label> 
					    <input type="text" id="c_date">
					    
						<br>
    					<label for="c_edate">신청 마감일</label>
    					<input type="text" id="c_edate">
						
				</div>
				<div class="modal-footer">
					<!-- data-dismiss="modal"를 통해 모달을 닫을수 있다. -->
					<button type="button" class="btn btn-secondary" onclick="previous02()">이전</button>
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#calRegist2">등록 완료</button>
				</div>
			</div>
		</div>
	</div>

</form>
	
<script>


	
	/* 이전 버튼 클릭 시 모달 동작 */
	function next01() {
		$('#calRegist01').modal('hide');
		$('#calRegist02').modal('show');
	}
	
	function next02() {
		$('#calRegist02').modal('hide');
		$('#calRegist03').modal('show');
	}
	
	/* 다음 버튼 클릭 시 모달 동작 */
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
<script src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
	<%-- <%@include file="/WEB-INF/views/frame/sc.jsp"%> --%>

</body>
</html>

                 