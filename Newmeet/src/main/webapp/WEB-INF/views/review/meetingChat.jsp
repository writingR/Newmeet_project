<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/frame/link.jsp"%>

</head>
<body>
	<%@include file="/WEB-INF/views/frame/header.jsp"%>
	<%@include file="/WEB-INF/views/frame/nav.jsp"%>


<div class = "jumbotron">
	<div class="container mt-4 mb-4 bg-light" style="height: 800px;">
	<div style="height: 90%; overflow: auto;" class="msg_container_base">
			<table class="table " >
				<thead>
					<tr>
						<th style="width: 80%">room : ${mNum}</th>
						<th id="people"></th>
					</tr>
				</thead>
				<tbody id="messages">
				</tbody>
			</table>
	</div>
		
		<form action="" id="sendForm" class="align-bottom">
			<div class="input-group mb-3">
					<input type="text" class="form-control" placeholder="Some text"  id="sendText" autocomplete="off" >
					<div class="input-group-prepend">
						<input type="submit" class="btn btn-outline-success" value="Send">
					</div>
			</div>
		</form>
		
	</div>
</div>


	
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>
	<script src="http://54.180.86.249:3000/socket.io/socket.io.js"></script>
	<!-- 54.180.86.249:3000 -->

	<script>
	

	
  $(() => {
    const name = '${nnic}';
    const socket = io('http://54.180.86.249:3000');

    socket.emit('joinRoom', {room:'${mNum}', name:name});
    
    socket.on('joinRoom', (data, size, date) => {
        $('#messages').append($('<tr>').html('<td><span class="font-weight-bold">'+data.name + '</span> 님이 참가했습니다.  '+ '</td><td>'+date+'</td>'));
        $('#people').text('참가 인원 : '+size);
        $(".msg_container_base").stop().animate({ scrollTop: $(".msg_container_base")[0].scrollHeight}, 1000);
      });
    
    $('#sendForm').submit(() => {
      socket.emit('chat message', {room:'${mNum}', name:name, msg:$('#sendText').val()}, );
      $('#sendText').val('');
      $(".msg_container_base").stop().animate({ scrollTop: $(".msg_container_base")[0].scrollHeight}, 1000);
      return false;
    });

    socket.on('chat message', (name, msg, date) => {
      $('#messages').append($('<tr>').html('<td><span class="font-weight-bold">'+ name + '</span> : '+msg+ '</td><td>'+date+'</td>'));
      $(".msg_container_base").stop().animate({ scrollTop: $(".msg_container_base")[0].scrollHeight}, 1000);
    });

    socket.on('leaveRoom', (name, size, date) => {
      $('#messages').append($('<tr>').html('<td><span class="font-weight-bold">'+ name + '</span> 님이 퇴장했습니다. </td><td>'+date+'</td>'));
      $('#people').text('참가 인원 : '+(size-1));
      $(".msg_container_base").stop().animate({ scrollTop: $(".msg_container_base")[0].scrollHeight}, 1000);
    });

    
  });
</script>
</body>
</html>