<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
 <%@include file="/WEB-INF/views/frame/link.jsp"%>
<meta charset="UTF-8">
<title>모임 생성</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	#cont{
		margin: 0 auto;
		text-align: center;
	}
	#cont h1{
		margin-top: 20px;
		margin-bottom: 20px;
	}
	
	#select{
		width: 100%;
		height: 400px;
		background-color: silver;
		margin: 0 auto;
		position: relative;
		opacity: 0.8;
		background-image: url("uploadfile/base9.png");
	}
	#select h2{
		color: #f5f6fa; 
		padding-top: 40px; 
		font-weight: bold;"
	}
	#option{
		margin : 100px;
	}
	
	input[type=button]{
		width: 100px;
		background-color: black;
		color: rgba(255,255,255,0.8);
		font-weight: bold;
		border-radius: 30px;
		border: 1px solid black;
		margin-right: 10px;
	}
	input[type=submit]{
		width: 100px;
		background-color: black;
		color: white;
		font-weight: bold;
		border-radius: 30px;
		border: 1px solid black;
		margin-right: 10px;
	}
	.category{
		margin-right: 20px;
		width: 300px;
	}
	#but{
		position: absolute;
		left: 1400px;
		top: 309px;
	}
	
	input[type=text]{
		width: 400px;
		height: 30px;
		font-size: 30px;
		border: 1px solid white;
		font-weight: bold;
	}
	input[type=file]{
		color: black;
		font-weight: bold;
	}
	#form{
		text-align: center;
	}
	table{
		margin: 0 auto;
	}
</style>
</head>
<body>
 <div class="site-wrap">

 </div>
 <div id="cont">
	<div id="select">
	<form id="form" enctype="multipart/form-data">
		<div id="option">
		
			<table>
			<thead>
			<tr>
			</tr>
				
			</thead>
			<tbody id="moim">
			
			</tbody>
			</table>
			
			<h4 class="display-6">정말 개설하시겠어요?</h4>
			
		
    	 </div>           	
                	
		<div id="but">
		<input type="button" onclick="pre()" value="Pre">
		<input type="submit" value="Create">
		</div>
		</form>
	</div>
	<form id="meetLeader" method="post">
		<div class="form-group">
			<input type="hidden" id="m_idx" name="m_idx">
		</div>
		<div class="form-group">
			<input type="hidden" id="nidx" name="nidx">
		</div>
		<div class="form-group">
			<input type="hidden" id="mm_level" name="mm_level" value="1">
		</div>
		<div id="memShell" class="form-group">
			<input id="memIn" style="height:52px; font-size:18px; border-radius:5px;" type="submit" class="btn btn-outline-success btn-block" value="Participate in">
		</div>
	</form>
 </div>

                	
	<%@include file="/WEB-INF/views/frame/footer.jsp"%>				
</body>
<script>

	$(document).ready(function() {
		
		$('#memIn').hide();
		$('#m_idx').val(sessionStorage.getItem("m_idx"));
		$('#nidx').val(${cnidx});
		
		$('#meetLeader').submit(function(){
  			alert($('#meetLeader').serialize());
  			
  			$.ajax({
  				url : '${pageContext.request.contextPath}/meetmember',
  				type : 'POST',
  				data : $('#meetLeader').serialize(),
  				success : function(data) {
  					alert('모임장으로 개설');
  				}
  			});
  		return false;
  		});
		
	});
	
	$('#form').submit(function(){
		$('#meetLeader').submit();
		location.href="/nm/moimList";
		return false;
	});

	
	function pre(){
		
		location.href="/nm/newMoim4";
	}
</script>



</html>