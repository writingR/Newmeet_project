<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="site-wrap">
    <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

			<div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                <!-- <a href="index.html" class="js-logo-clone">Shoppers</a> -->
                <a href="<c:url value="/" />"><img alt="" src="images/logo.png" style="width:120px;height:120px;"></a>
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
                  <li> 
                  <a href="<c:url value="/Welcome" />" style="font-family: 'Nanum Gothic Coding', monospace;color:black;">회원가입</a></button></li>
                  <li> 
                  <a href="<c:url value="/Login" />" style="font-family: 'Nanum Gothic Coding', monospace;color:black;">로그인</a></button></li>
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>

          </div>
        </div>
      </div> 