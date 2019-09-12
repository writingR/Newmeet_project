<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
 <div class="site-wrap">
    <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

			<div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                <!-- <a href="index.html" class="js-logo-clone">Shoppers</a> -->
                <a href="<c:url value="/loginOk" />"><img alt="" src="bootstrap/images/logo.png" style="width:140px;height:140px;"></a>
            </div>

            <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
              <form action="" class="site-block-top-search">
                <span class="icon icon-search2"></span>
                <input type="text" class="form-control border-0" placeholder="Search">
              </form>
            </div>

           

            <div class="col-6 col-md-4 order-3 order-md-3 text-right">
              <div class="site-top-icons">
                <ul>
                  <img style="width: 30px;height:30px;border-radius: 50px;" id="profile" src="/nm/uploadfile/${MemberImg}">
                  ${MemberNic} <span style="color:black;font-size:16px; font-weight:450"> 님 :></span> 
                  <li>
                  <a href="<c:url value="/main" />" style="font-family: 'Nanum Gothic Coding', monospace;color:black;margin-left: 20px;font-weight:bold;" onclick="logout()">로그아웃</a></li>
                  <li> 
                  <a href="<c:url value="/Mypage" />" style="font-family: 'Nanum Gothic Coding', monospace;color:black;font-weight:bold;">마이페이지</a></button></li> 
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>

          </div>
        </div>
      </div> 
      
      
      	<script>
		function logout() {
			$.ajax({
				
				url : '/nm/mem/logout',
				type : 'GET',
				success : function(data) {
					alert(data);
					sessionStorage.removeItem("loginKey");
					localStorage.removeItem("loginKey");
					location.replace = "main";
				}
			});

		}
	</script>