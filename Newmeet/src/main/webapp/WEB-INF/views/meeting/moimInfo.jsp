<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
</style>
</head>
<body>
<h1>모임 상세정보 페이지 좋아요를 한번이라도 눌러본 사용자</h1>
	
	
	
	
	
	
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
	</div>
	<form id="form">
	<table>
	<tr>
		<td><span id="star"></span></td>
		<td><input type="submit" value="별점 주기"></td>
	</tr>
	</table>
	</form>
	<br><br><br>
	<div>
		${m_cont}
	</div>
	
	
	<br>
	
		<br><br>
		
		<div id="list">
		</div>
                	
</body>
<script>
$(document).ready(function(){
	var m_idx = ${m_idx};
	$.ajax({
		url : 'http://localhost:8080/nm/meeting/list/'+ m_idx,
		type : 'GET',
		success : function(data) {
			var html = '';
		
				html += '<h1>${m_name}</h1> <br>';
				html += '<img src="http://localhost:8080/nm/uploadfile/${m_img}" style="width: 200px; height: 150px;"> <br>';
				html += '<br><br><hr>';
				
				html += '<h2>${nidx}번사용자</h2>';
				html += '별점 준 사람 수 : '+ data.m_star +'  <br>';
				html += '별점 평균 : '+(data.m_stotal/data.m_star).toFixed(1)+' <img src="http://localhost:8080/nm/uploadfile/star0.png"><span>별점 총 : '+data.m_stotal+'</span><br>';
				html += '카테고리 : ${small_idx} <br>';
				html += '좋아요 총 수 : '+ data.m_like +' ';
				html += '<c:if test="${l_like == 0}">';
				html += '<img onclick="like(${m_idx})" src="http://localhost:8080/nm/uploadfile/like0.png">';
				html += '</c:if>';
				html += '<c:if test="${l_like == 1}">';
				html += '<img onclick="like(${m_idx})" src="http://localhost:8080/nm/uploadfile/like1.png">';
				html += '</c:if>';
				
				$('#list').html(html);
			
				
		}
	});
	
	});
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
			url : 'http://localhost:8080/nm/like/'+ m_idx,
			type : 'GET',
			success : function(data) {
				
				if(data == -1){
					alert('로그인해라');
				}else if(data == 0){
					alert('잘안댐');
				}else if(data == 1){
					alert('성공적');
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
			url : 'http://localhost:8080/nm/star',
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
	

</script>
</html>