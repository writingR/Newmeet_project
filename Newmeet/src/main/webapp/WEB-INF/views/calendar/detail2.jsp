<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
<%
	session.setAttribute("MemberIdx", 107);
	
%>
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
		    						<div class="vr"><span>Sale</span></div>
				    				<a href="${pageContext.request.contextPath}/static/detail/destination-single.html"><img src="${pageContext.request.contextPath}/static/detail/images/destination-1.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				</div>
			    				<div class="text">
			    					<h4 class="price"><span class="old-price mr-2">$500</span>$400</h4>
			    					<span>15 Days Tour</span>
			    					<h3><a href="${pageContext.request.contextPath}/static/detail/destination-single.html">Gurtnellen, Swetzerland</a></h3>
			    					<div class="star d-flex clearfix">
			    						<div class="mr-auto float-left">
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
			    						</div>
			    						<div class="float-right">
			    							<span class="rate"><a href="#">(120)</a></span>
			    						</div>
			    					</div>
			    				</div>
			    				<a href="${pageContext.request.contextPath}/static/detail/images/destination-1.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
			    					<span class="icon-expand"></span>
			    				</a>
		    				</div>
		    			</div>
		    			</div>
		    			
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
				                <input type="submit" value="Search" class="form-control btn btn-primary">
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
  		
  		$('#m_idx').val(${m_idx});
  		
  		list(m_idx);
  		
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