<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/frame/link.jsp"%>
<meta charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
<!-- 스타일 끝 -->

</head>
<!-- 바디 시작 -->
<body>
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>
	<%@ include file="/WEB-INF/views/frame/nav.jsp"%>
	<div class="container">
		<h1 class="display-6">모임 회원 상세 페이지</h1>
		<hr>

		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<div class="card" id="meetMemberList" style="width: 400px;"></div>
			</div>
			<div class="col-sm-4"></div>
		</div>


		<hr>
		<div class="row">
			<div class="col-sm-4">
				<div align="center">
					<button type="button" class="btn btn-link"
						onclick="myMeeting(${m_idx})">가입한 모임</button>
				</div>
			</div>
			<div class="col-sm-4">
				<div align="center">
					<button type="button" class="btn btn-link"
						onclick="myReview(${m_idx})">작성한 글</button>
				</div>
			</div>
			<div class="col-sm-4">
				<div align="center">
					<button type="button" class="btn btn-link"
						onclick="myComment(${m_idx})">작성한 댓글</button>
				</div>
			</div>
		</div>
		<hr>

		<table id="meetingtable" class="table table-hover"
			style="width: 100%;">
			<thead class="thead-light">
				<tr>

				</tr>
			</thead>
			<tbody id="meetinglist">

			</tbody>

		</table>

		<table id="reviewtable" class="table table-hover" style="width: 100%;">
			<thead class="thead-light">
				<tr>

				</tr>
			</thead>
			<tbody id="reviewlist">

			</tbody>

		</table>

		<table id="commenttable" class="table table-hover"
			style="width: 100%;">
			<thead class="thead-light">
				<tr>

				</tr>
			</thead>
			<tbody id="commentlist">

			</tbody>

		</table>
	
	</div>

	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@ include file="/WEB-INF/views/frame/sc.jsp"%>

	<script>
	
	$(document).ready(function(){
		
		var m_idx = ${m_idx};
		var bnidx = ${bnidx};
		
		$('#meetingtable').hide();
		$('#reviewtable').hide();
		$('#commenttable').hide();
		
		list(m_idx,bnidx);
	
	});
	
	function list(i, e) {
			
		$.ajax({
			url: '${pageContext.request.contextPath}/meetmember/'+ i +'/'+ e,
			type: 'GET',
			data: {},
			success: function(data) {
				console.log(data);

				var html = '';
					html += '<img class="card-img-top" src="${pageContext.request.contextPath}/static/img/'+data.nphoto+'" alt="profileImage" style="height:400px; width:100%;">';
					html += '<div class="card-body">';
					html += '<h4 class="card-title">'+data.nnic+'</h4>';
					html += '<p class="card-text">'+data.nemail+'</p>';
					html += '</div>';
					
					$('#meetMemberList').html(html);
					
				}
				
		});
	}
	
	function myMeeting(m_idx) {
		var m_idx = m_idx;
		var bnidx = ${bnidx};
		
		$('#commenttable').hide();
		$('#reviewtable').hide();
		$('#meetingtable').show();
		
		$.ajax({
			url : '${pageContext.request.contextPath}/meetmember/meeting/'+m_idx+'/'+bnidx,
			type : 'GET',
			data : {},
			success : function(data){
				console.log(data);
				
				var html = '';
				for (var i=0; i<data.mmList.length; i++) {
					html += '<tr>';
					html += '<td style="width:20%;"><img src="${pageContext.request.contextPath}/static/img/'+data.mmList[i].m_img+'" alt="Image" style="width=50px; height:50px;"></td>';
					html += '<td style="width:80%;"><a href="${pageContext.request.contextPath}/moimInfo?m_idx='+data.mmList[i].m_idx+'">'+data.mmList[i].m_name+'</a></td>';
					html += '</tr>';
					
					$('#meetinglist').html(html);
				}
						
			}
		});
		
	}
	
	function myReview(m_idx) {
		var m_idx = m_idx;
		var bnidx = ${bnidx};
		
		$('#meetingtable').hide();
		$('#commenttable').hide();
		$('#reviewtable').show();
	
		$.ajax({
			url : '${pageContext.request.contextPath}/meetmember/review/'+m_idx+'/'+bnidx,
			type : 'GET',
			data : {},
			success :  function(data){
				console.log(data);
				var html = '';
				var none = '';
				if (data.mmList == null) {
					alert('모임에 가입하셔야 확인할 수 있습니다.');
					return false;
				} else if (data.mmList.length>=1) {
					for (var i=0; i<data.mmList.length; i++) {
						html += '<tr>';
						html += '<td style="width:20%;"><img src="'+data.mmList[i].r_img+'" alt="Image" style="width=50px; height:50px;"></td>';
						html += '<td style="width:60%;"><a href="${pageContext.request.contextPath}/review/'+data.mmList[i].r_idx+'?mNum='+data.mmList[i].m_idx+'">'+data.mmList[i].r_title+'</a></td>';
						html += '<td style="width:20%;">'+data.mmList[i].r_date+'</td>';
						html += '</tr>';
					
						$('#reviewlist').html(html);
					}
				} else if (data.mmList.length<=0) {
						none += '<tr>';
						none += '<td>작성한 리뷰가 없습니다.</td>';
						none += '</tr>';
					
						$('#reviewlist').html(none);
				}
				
			}
		});
		
	}
	
	function myComment(m_idx) {
		var m_idx = m_idx;
		var bnidx = ${bnidx};
		
		$('#meetingtable').hide();
		$('#reviewtable').hide();
		$('#commenttable').show();
		
		$.ajax({
			url : '${pageContext.request.contextPath}/meetmember/comment/'+m_idx+'/'+bnidx,
			type : 'GET',
			data : {},
			success : function(data){
				console.log(data);
				var html = '';
				var none = '';
				if (data.mmList == null) {
					alert('모임에 가입하셔야 확인할 수 있습니다.');
					return false;
				} else if (data.mmList.length>=1) {
					for (var i =0; i<data.mmList.length; i++) {
						html += '<tr>';
						html += '<td style="width:80%;"><a href="${pageContext.request.contextPath}/review/'+data.mmList[i].r_idx+'?mNum='+data.mmList[i].m_idx+'">'+data.mmList[i].rd_content+'</td>';
						html += '<td style="width:20%;">'+data.mmList[i].rd_date+'</td>';
						html += '</tr>';
						
						$('#commentlist').html(html);
					}
				} else if (data.mmList.length<=0) {
						none += '<tr>';
						none += '<td>작성한 댓글이 없습니다.</td>';
						none += '</tr>';
						
						$('#commentlist').html(none);
					}
				}
			
		});
		
	}
</script>


</body>
<!-- 바디 끝 -->

</html>