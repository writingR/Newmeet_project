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
		<h1 class="display-6">모임 회원 관리</h1>


		<%-- <form id="meetLeader" method="post">
			<div class="form-group">
				<input type="hidden" id="m_idx" name="m_idx">
			</div>
			<div class="form-group">
				<input type="hidden" id="nidx" name="nidx" value="<%=(int)session.getAttribute("MemberIdx")%>">
			</div>
			<div class="form-group">
				<input type="hidden" id="mm_level" name="mm_level" value="1">
			</div>
			<input type="submit" class="btn btn-info" value="개설">
		</form> --%>

		<%-- <form id="meetCrew" method="post">
			<div class="form-group">
				<input type="hidden" id="m_idx2" name="m_idx">
			</div>
			<div class="form-group">
				<input type="hidden" id="nidx" name="nidx" value="<%=(int)session.getAttribute("MemberIdx2")%>">
			</div>
			<div class="form-group">
				<input type="hidden" id="mm_level" name="mm_level" value="0">
			</div>
			<input type="submit" class="btn btn-info" value="참가">
		</form> --%>

		<br>
		<table class="table" style="width: 100%">
			<thead class="thead-light">
				<tr></tr>
			</thead>
			<tbody id="meetMemberList">

			</tbody>
			
			
		</table>
		<ul class="pagination justify-content-center" style="margin:20px 0; margin-left:5px;">
			<li class="page-item">
				<div id="index" class="btn-group"></div>
			</li>
		</ul>

	</div>
	
<%@ include file="/WEB-INF/views/frame/footer.jsp" %>
<%@ include file="/WEB-INF/views/frame/sc.jsp" %>

	<script>
	var m_idx = ${m_idx};
	var level = ${mm_level};
	
	$(document).ready(function(){
		
		list();
		
		/* $('#meetLeader').submit(function() {
			alert($('#meetLeader').serialize());
			
			$.ajax({
				url: 'http://localhost:8080/nm/meetmember',
				type: 'POST',
				data: $('#meetLeader').serialize(),
				success: function(data) {
					alert(data);
					window.location.href='MeetMember.jsp';
				}
			});
			return false;
		}); */
	
		/* $('#meetCrew').submit(function() {
			alert($('#meetCrew').serialize());
			
			$.ajax({
				url: 'http://localhost:8080/nm/meetmember',
				type: 'POST',
				data: $('#meetCrew').serialize(),
				success: function(data) {
					alert(data);
					
				}
			});
			return false;
		}); */
		
		/* $('#meetnew').submit(function() {
			alert($('#meetnew').serialize());
			
			$.ajax({
				url: 'http://localhost:8080/nm/meetmember',
				type: 'POST',
				data: $('#meetnew').serialize(),
				success: function(data) {
					alert(data);
					
				}
			});
			return false;
		}); */
			
	});
	
	function list() {
		
		$.ajax({
			url: 'http://localhost:8080/nm/meetmember/'+ m_idx,
			type: 'GET',
			data: {},
			success: function(data) {
				console.log(data);
				
				var html = '';
				var htmlIndex = '<div>';
				for(var i=0; i<data.mmList.length; i++) {
					
					html += '<tr>';
					html += '<td style="width:20%;"><img src="${pageContext.request.contextPath}/static/img/'+data.mmList[i].nphoto+'" alt="Image" style="width:50px; height:50px;"></td>';
					html += '<td style="width:20%;">'+data.mmList[i].nnic+'</td>';
					html += '<td style="width:40%;"><button class="btn btn-link" onclick="detail('+data.mmList[i].nidx+')">'+data.mmList[i].nemail+'</button></td>';
					if(data.mmList[i].nidx == ${nidx} && data.mmList[i].mm_level == 1) {
					html +=	'<td style="width: 20%;"><img src="${pageContext.request.contextPath}/static/img/leader.jpg" alt="leaderImg" style="width:50px; height:50px; margin-left:25px;""></td>'
					} else if(${mm_level} == 1 && data.mmList[i].nidx != ${nidx}){
					html += '<td style="width:20%;"><button class="btn btn-primary" onclick="exile('+data.mmList[i].mm_idx+')">강퇴하기</button></td>';
					}
					
					html += '</tr>';
				}
				
				for(var i=1; i<data.totalCount / 10 + 0.9; i++) {
					htmlIndex += '<button class= "btn btn-primary" onclick="page('+ i +')">' + i + '</button>';
				}
				htmlIndex += '</div>';
				$('#meetMemberList').html(html);
				$('#index').html(htmlIndex);
			}
		});
	}
	
	function page(index) {
			
		$.ajax({
			url: 'http://localhost:8080/nm/meetmember/'+ m_idx,
			type: 'GET',
			data: {p:index},
			success: function(data) {
				console.log(data);
				
				var html = '';
				var htmlIndex = '<div>';
				for(var i=0; i<data.mmList.length; i++) {
					
					html += '<tr>';
					html += '<td style="width:20%;"><img src="${pageContext.request.contextPath}/static/img/'+data.mmList[i].nphoto+'" alt="Image" style="width:50px; height:50px;"></td>';
					html += '<td style="width:20%;">'+data.mmList[i].nnic+'</td>';
					html += '<td style="width:40%;"><button class="btn btn-link" onclick="detail('+data.mmList[i].nidx+')">'+data.mmList[i].nemail+'</button></td>';
					if(data.mmList[i].nidx == ${nidx} && data.mmList[i].mm_level == 1) {
					html +=	'<td style="width: 20%;"><img src="${pageContext.request.contextPath}/static/img/leader.jpg" alt="leaderImg" style="width:50px; height:50px; margin-left:25px;"></td>'
					} else if(${mm_level} == 1 && data.mmList[i].nidx != ${nidx}){
					html += '<td style="width:20%;"><button class="btn btn-primary" onclick="exile('+data.mmList[i].mm_idx+')">강퇴하기</button></td>';
					}
					html += '</tr>';
				}
				
				for(var i=1; i<data.totalCount / 10 + 0.9; i++) {
					htmlIndex += '<button class= "btn btn-primary" onclick="page('+ i +')">' + i + '</button>';
				}
				htmlIndex += '</div>';
				$('#meetMemberList').html(html);
				$('#index').html(htmlIndex);
			}
		});
	}
	
	function detail(nidx) {
		var nidx = nidx;
		
		location.href='${pageContext.request.contextPath}/meetMember/detail?m_idx='+m_idx+'&nidx='+nidx+'';
	}
	

	function exile(mm_idx) {
		var mm_idx = mm_idx;
		
		if(confirm('정말 추방하시겠어요?')) {
			
			$.ajax({
				url:'http://localhost:8080/nm/meetmember/'+ m_idx +'/'+ mm_idx,
				type: 'DELETE',
				success: function(data) {
					alert(data);
					if(data == 'success') {
						alert('추방했습니다.');
							list();
						}
					}	
			});
		}
		
		
	}
</script>


</body>
<!-- 바디 끝 -->

</html>