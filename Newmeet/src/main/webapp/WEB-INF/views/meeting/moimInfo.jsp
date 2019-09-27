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
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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
    <%-- <%@ include file="/WEB-INF/views/frame/header.jsp"%> --%>
	<%-- <%@ include file="/WEB-INF/views/frame/nav.jsp"%> --%>
	  

    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-8 pr-lg-4">
    				<div class="row">
    					<div align="center">
		    			<div class="col-md-12 col-lg-12 ftco-animate">
		    				<div class="project">
		    					<div class="img">
		    						<div class="vr"></div>
				    				<a href="#"><img src="http://localhost:8080/nm/uploadfile/${m_img}" class="img-fluid" alt="Colorlib Template"></a>
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
			    				<a href="http://localhost:8080/nm/uploadfile/${m_img}" class="icon image-popup d-flex justify-content-center align-items-center">
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
		    			
		    			<a style="height:52px; font-size:18px; border-radius:5px;" href="http://localhost:8080/nm/meetMember?m_idx=${m_idx}" class="btn btn-outline-primary btn-block">View more</a>
		    		
		    		</div>
		    		<hr>
		    		<div>
		    		<h2>Review</h2>	
		    			<a style="height:52px; font-size:18px; border-radius:5px;" href="http://10.10.10.18:8080/nm/review?mNum=${m_idx}" class="btn btn-outline-primary btn-block">Review</a>
		    		</div>
		    		<hr>
		    		<div>	
		    		<h2>Chat</h2>
		    			<a style="height:52px; font-size:18px; border-radius:5px;" href="#" class="btn btn-outline-primary btn-block">Chat</a>
		    		</div>
		    		<hr>
		    		<div>
		    			<form id="meetCrew" method="post">
							<div class="form-group">
								<input type="hidden" id="m_idx" name="m_idx">
							</div>
							<div class="form-group">
								<input type="hidden" id="nidx" name="nidx" value="<%=(int)session.getAttribute("MemberIdx")%>">
							</div>
							<div class="form-group">
								<input type="hidden" id="mm_level" name="mm_level" value="0">
							</div>
							<input style="height:52px; font-size:18px; border-radius:5px;" type="submit" class="btn btn-outline-success btn-block" value="Participate in">
						</form>
		    		</div>
		    		
    			</div> <!-- end -->
    			<div class="col-lg-4 p-4 bg-light">
    				<div class="search-wrap-1 ftco-animate">
    					<h2 class="mb-3">일정</h2>
							<form action="#" class="search-property-1">
		        		<div class="row">
		        			<div class="col-lg-12 align-items-end mb-3">
		        				<div class="form-group">
		        					<label for="#">Destination</label>
		          				<div class="form-field">
		          					<div class="icon"><span class="ion-ios-search"></span></div>
				                <input type="text" class="form-control" placeholder="Search place">
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg-12 align-items-end mb-3">
		        				<div class="form-group">
		        					<label for="#">Check-in date</label>
		        					<div class="form-field">
		          					<div class="icon"><span class="ion-ios-calendar"></span></div>
				                <input type="text" class="form-control checkin_date" placeholder="Check In Date">
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg-12 align-items-end mb-3">
		        				<div class="form-group">
		        					<label for="#">Check-out date</label>
		        					<div class="form-field">
		          					<div class="icon"><span class="ion-ios-calendar"></span></div>
				                <input type="text" class="form-control checkout_date" placeholder="Check Out Date">
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg-12 align-items-end mb-3">
		        				<div class="form-group">
		        					<label for="#">Price Limit</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="" class="form-control">
		                        <option value="">$5,000</option>
		                        <option value="">$10,000</option>
		                        <option value="">$50,000</option>
		                        <option value="">$100,000</option>
		                        <option value="">$200,000</option>
		                        <option value="">$300,000</option>
		                        <option value="">$400,000</option>
		                        <option value="">$500,000</option>
		                        <option value="">$600,000</option>
		                        <option value="">$700,000</option>
		                        <option value="">$800,000</option>
		                        <option value="">$900,000</option>
		                        <option value="">$1,000,000</option>
		                        <option value="">$2,000,000</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg-12 align-self-end">
		        				<div class="form-group">
		        					<div class="form-field">
				                
				              </div>
			              </div>
		        			</div>
		        		</div>
		        	</form>
		        </div>
    			</div> <!-- end -->
    		</div>
    	</div>
    </section>
    
    <%@ include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@ include file="/WEB-INF/views/frame/sc.jsp"%>
    
    

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
  
  <script>
  	$(document).ready(function(){
  		
  		var m_idx = ${m_idx};
  		
  		list(m_idx);
  			var m_idx = ${m_idx};
  			$.ajax({
  				url : 'http://localhost:8080/nm/meeting/list/'+ m_idx,
  				type : 'GET',
  				success : function(data) {
  					var html = '';
  					var like = '';
  					
  						html += (data.m_stotal/data.m_star).toFixed(1)+' <img src="http://localhost:8080/nm/uploadfile/star0.png">';
  						$('.rate2').html(html);
  						like +=  data.m_like ;
  						like += '<c:if test="${l_like == 0}">';
  						like += ' <img onclick="like(${m_idx})" src="http://localhost:8080/nm/uploadfile/like0.png">';
  						like += '</c:if>';
  						like += '<c:if test="${l_like == 1}">';
  						like += ' <img onclick="like(${m_idx})" src="http://localhost:8080/nm/uploadfile/like1.png">';
  						like += '</c:if>';
  						
  						$('.rate').html(like);
  					
  						
  				}
  			});
  			
  			$.ajax({
  				url : 'http://localhost:8080/nm/meeting/button/'+ m_idx,
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
  	  					
  	  					url : 'http://localhost:8080/nm/meeting/'+ m_idx,
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
  					url : 'http://localhost:8080/nm/like/'+ m_idx,
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
  			
  		

  	
  	function list(i) {
  		$.ajax({
  			url: 'http://localhost:8080/nm/meetmember/'+i,
			type: 'GET',
			data: {},
			success: function(data){
				console.log(data);
				var html = '';
				if(data.mmList.length>=1) {
					for (var i=0; i<data.mmList.length; i++) {
						html += '<tr>';
						html += '<td><img src="${pageContext.request.contextPath}/static/img/'+data.mmList[i].nphoto+'" alt="Image" style="height:50px; width:50px;"></td>';
						html += '<td style="width:20%;">'+data.mmList[i].nnic+'</td>';
						html += '<td style="width:60%;">'+data.mmList[i].nemail+'</td>';
						html += '</tr>';
					
						$('#memlist').html(html);
						}
					}
				}
  		});
  	}
  
  </script>
  
  </body>
</html>