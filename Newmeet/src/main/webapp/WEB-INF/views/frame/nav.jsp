<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <nav class="site-navigation text-right text-md-center" role="navigation">
        <div class="container">
          <ul class="site-menu js-clone-nav d-none d-md-block" style="padding:20px;">
           <!--  <li class="has-children active">
              <a href="index.html">Home</a>
              <ul class="dropdown">
                <li><a href="#">Menu One</a></li>
                <li><a href="#">Menu Two</a></li>
                <li><a href="#">Menu Three</a></li>
                <li class="has-children">
                  <a href="#">Sub Menu</a>
                  <ul class="dropdown">
                    <li><a href="#">Menu One</a></li>
                    <li><a href="#">Menu Two</a></li>
                    <li><a href="#">Menu Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="has-children">
              <a href="about.html">About</a>
              <ul class="dropdown">
                <li><a href="#">Menu One</a></li>
                <li><a href="#">Menu Two</a></li>
                <li><a href="#">Menu Three</a></li>
              </ul>
            </li>
            <li><a href="shop.html">Shop</a></li>
            <li><a href="#">Catalogue</a></li>
            <li><a href="#">New Arrivals</a></li>
            <li><a href="contact.html">Contact</a></li> -->
   
            <li style="font-weight:bold;"><a href="<c:url value="/category?category=여행" />" style="font-size:20px;">여행</a></li>
            <li style="font-weight:bold;"><a href="<c:url value="/category?category=문화" />" style="font-size:20px;">문화</a></li>
            <li style="font-weight:bold;"><a href="<c:url value="/category?category=게임" />" style="font-size:20px;">게임</a></li>
            <li style="font-weight:bold;"><a href="<c:url value="/category?category=스포츠" />" style="font-size:20px;">운동</a></li>
            
            
          </ul>
        </div>
      </nav>
    </header>