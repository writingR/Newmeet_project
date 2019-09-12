<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<body>
<%@include file="/WEB-INF/views/frame/header2.jsp"%>
<img alt="" src="static/img/banner.png">
<br><br><br>
<h1 style="width:400px;margin:0 auto;color:black;font-size:50px;font-weight:bold;">프로필 관리</h1>
<br>
<table class="table">
      <thead>
         <tr>
            <th scope="col">#</th>
            <th scope="col">프로필사진</th>
            <th scope="col">이메일</th>
            <th scope="col">닉네임</th>
            <th scope="col">비밀번호</th>
            <th scope="col">수정하기</th>
            <th scope="col">삭제하기</th>
         </tr>
      </thead>
		<tbody id="managerList">
			<!-- <button type="button" class="btn btn-primary" data-toggle="modal" onclick="edit1('+ data[i].cidx + ')"
			data-target="#exampleModal" data-whatever="@fat">수정</button> -->
			<tr>
				<th scope="row1">${MemberIdx}</th>
				<th scope="row2">${MemberImg}</th>
				<th scope="row3">${MemberEmail}</th>
				<th scope="row4">${MemberNic}</th>
				<th scope="row5">${MemberPw}</th>
				<th scope="row6"><button type="button" class="btn btn-primary" data-toggle="modal" onclick="edit1(${MemberIdx})"
				data-target="#exampleModal" data-whatever="@fat">수정</button></th>
				<th scope="row7"><button type="button" class="btn btn-danger"
						onclick="delete1('+ data.nidx + ')">삭제</button></th>
			</tr>
		</tbody>
	</table>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">New message</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="editForm">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">#</label> <input
								type="text" class="form-control" id="idx" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">이메일 :
							</label> <input type="text" class="form-control" id="email" name="nemail" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">닉네임 :
							</label> <input type="text" class="form-control" id="nic" name="nnic">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">비밀번호 :
							</label> <input type="password" class="form-control" id="pw" name="npw">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary" onclick="editOk()">수정하기</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
		

	<script>
		$(document).ready(function() {
			/* var nidx = session.getAttribute("loginKey"); */
			var nidx = '${MemberIdx}';
			/* var nemail = session.getAttribute("MemberEmail"); */
			var nemail = '${MemberEmail}';
			/* var nnic = session.getAttribute("MemberNic"); */
			var nnic = '${MemberNic}';
			/* var npw = session.getAttribute("MemberPw"); */
			var npw = '${MemberPw}';
		});				
		function edit1(nidx) {
			
			if (confirm('수정하시겠습니까?')) {
				
				$.ajax({
							url : '/nm/mem/user/'+ nidx,
							type : 'GET',
							success : function(data) {
								
								$('#idx').val(data.nidx);
								$('#email').val(data.nemail);
								$('#nic').val(data.nnic);
								$('#pw').val(data.npw);
							}
						});
			}
		}
		
		function editOk() {
			var editformData = new FormData();
			editformData.append("idx",$('#idx').val());
		//	editformData.append("Nemail",$('#email').val());//
			editformData.append("nic",$('#nic').val());
			/* editformData.set("nic",$('#nic').val()); */
			editformData.append("pw",$('#pw').val());
			
			$.ajax({
					url : '/nm/mem/edit/'+ $('#idx').val(),
					type : 'POST',
					data :editformData,
					processData: false,
					contentType: false,
					success : function(data) {
						
						alert(editformData.get('pw'));
						//alert(editformData.get('nic'));
						
						alert('수정되었습니다.');
						/* location.replace('loginOk'); */
						location.reload();
							}
						});

						return false;

		}
			
		function delete1(nidx) {
			if (confirm('정말 삭제하시겠습니까?')) {
				$.ajax({  
							url : '/nm/mem/'+ nidx,
							type : 'DELETE',
							success : function(data) {
								alert('삭제가 완료되었습니다.');
								location.reload();
							}
						});
			} else {
				return false;

			}
		}
		
		
	</script>

	<%@include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>

</body>
</html>