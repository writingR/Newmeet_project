<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/frame/link.jsp" %>
<meta charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
<!-- 스타일 끝 -->

</head>
<!-- 바디 시작 -->
<body>
<%@ include file="/WEB-INF/views/frame/header.jsp" %>
<%@ include file="/WEB-INF/views/frame/nav.jsp" %>
	<div class="container">
		<h1 class="display-6">모임멤버 상세 페이지</h1>

		<table class="table" style="width: 100%">
			<thead class="thead-light">
				<tr>
					<th>nemail</th>
					<th>nphoto</th>
					<th>nnic</th>
				</tr>
			</thead>
			<tbody id="meetMemberList">

			</tbody>
			
		</table>
		<hr>
		<div class="row">
			<div class="col-sm-4"><div align="center"><button type="button" class="btn btn-link" onclick="myMeeting(${m_idx})">가입한 모임</button></div></div>
			<div class="col-sm-4"><div align="center"><button type="button" class="btn btn-link" onclick="myReview(${m_idx})">가입한 글</button></div></div>
			<div class="col-sm-4"><div align="center"><button type="button" class="btn btn-link" onclick="myComment(${m_idx})">가입한 댓글</button></div></div>
		</div>
		<hr>
		
		<table class="table" style="width: 100%">
			<thead class="thead-light">
				<tr>
					<th>사진</th>
					<th>모임 제목</th>
				</tr>
			</thead>
			<tbody id="meetinglist">

			</tbody>
			
		</table>
		
		<table class="table" style="width: 100%">
			<thead class="thead-light">
				<tr>
					<th>사진</th>
					<th>제목</th>
					<th>게시일</th>
				</tr>
			</thead>
			<tbody id="reviewlist">

			</tbody>
			
		</table>
		
		<table class="table" style="width: 100%">
			<thead class="thead-light">
				<tr>
					<th>코맨트 내용</th>
					<th>게시일</th>
				</tr>
			</thead>
			<tbody id="commentlist">

			</tbody>
			
		</table>
		
		
		
		
	
	</div>
	
<%@ include file="/WEB-INF/views/frame/footer.jsp" %>
<%@ include file="/WEB-INF/views/frame/sc.jsp" %>

	<script>
	
	$(document).ready(function(){
		var m_idx = ${m_idx};
		var nidx = ${nidx};
		
		list(m_idx,nidx);
	
	});
	
	function list(i, e) {
			
		$.ajax({
			url: 'http://localhost:8080/nm/meetmember/'+ i +'/'+ e,
			type: 'GET',
			data: {},
			success: function(data) {
				console.log(data);

				var html = '';
					html += '<tr>';
					html += '<td>'+data.nemail+'</td>';
					html += '<td><img src="${pageContext.request.contextPath}/static/img/'+data.nphoto+'" alt="Image" style="width:150px; height:150px;"></td>';
		
					html += '<td>'+data.nnic+'</td>';
					html += '</tr>';
					
					$('#meetMemberList').html(html);
					
				}
				
		});
	}
	
	function myMeeting(m_idx) {
		var m_idx = m_idx;
		var nidx = ${nidx};
		
		$.ajax({
			url : 'http://localhost:8080/nm/meetmember/meeting/'+m_idx+'/'+nidx,
			type : 'GET',
			data : {},
			success : function(data){
				console.log(data);
				
				var html = '';
				for (var i=0; i<data.mmList.length; i++) {
					html += '<tr>';
					html += '<td><img src="${pageContext.request.contextPath}/static/img/'+data.mmList[i].m_img+' alt="Image" style="width=50px; height:50px;"></td>';
					html += '<td>'+data.mmList[i].m_name+'</td>';
					html += '</tr>';
					
					$('#meetinglist').html(html);
				}
					
			}
		});
		
	}
	
	function myReview(m_idx) {
		var m_idx = m_idx;
		var nidx = ${nidx};
	
		$.ajax({
			url : 'http://localhost:8080/nm/meetmember/review/'+m_idx+'/'+nidx,
			type : 'GET',
			data : {},
			success :  function(data){
				console.log(data);
				var html = '';
				for (var i=0; i<data.mmList.length; i++) {
					html += '<tr>';
					html += '<td><img src="${pageContext.request.contextPath}/static/img/'+data.mmList[i].r_img+' alt="Image" style="width=50px; height:50px;"></td>';
					html += '<td>'+data.mmList[i].r_title+'</td>';
					html += '<td>'+data.mmList[i].r_date+'</td>';
					html += '</tr>';
					
					$('#reviewlist').html(html);
				}
			}
		});
		
	}
	
	function myComment(m_idx) {
		var m_idx = m_idx;
		var nidx = ${nidx};
		
		$.ajax({
			url : 'http://localhost:8080/nm/meetmember/comment/'+m_idx+'/'+nidx,
			type : 'GET',
			data : {},
			success : function(data){
				console.log(data);
				var html = '';
				for (var i =0; i<data.mmList.length; i++) {
					html += '<tr>';
					html += '<td>'+data.mmList[i].rd_content+'</td>';
					html += '<td>'+data.mmList[i].rd_date+'</td>';
					html += '</tr>';
					
					$('#commentlist').html(html);
				}
			}
			
		});
		
	}
</script>


</body>
<!-- 바디 끝 -->

</html>