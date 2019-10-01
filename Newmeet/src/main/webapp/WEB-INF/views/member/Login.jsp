<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
<script>
   
   function checkAuth() {
      
       gauth.signIn().then(function(result){
         console.log(result.toString()); 
         var profile = gauth.currentUser.get().getBasicProfile();
         console.log(profile);
         console.log(profile.U3);
         console.log(profile.Eea);
         /* console.log('gauth.signIn()');  */
         /* $("#loginBtn").val(); */
         
         datasend();
         
            
       });    
/*       
          gauth.signOut().then(function(){
            console.log('gauth.signOut()');
            checkLoginStatus();
          });
      
 */      
      
   /*    var loginBtn = document.querySelector('#loginBtn');
      var nameTxt = document.querySelector('#name');
      if (gauth.isSignedIn.get()) {
         console.log('logined');
         loginBtn.value = '구글계정 로그아웃하기';
         var profile = gauth.currentUser.get().getBasicProfile();
         console.log(profile);
         console.log(profile.getName());
         nameTxt.innerHTML = 'Welcome'+profile.getName();
      } else {
         console.log('logout');
         loginBtn.value = '구글로 로그인하기'
         nameTxt.innerHTML = '';
      } */
   }
   
   
   function datasend(){
      /* alert('일로들어옴'); */
      var profile = gauth.currentUser.get().getBasicProfile();
      $.ajax({
         url : '/nm/GoogleSociallogin',
         type : 'POST',
         data : JSON.stringify({
            nemail : profile.U3,
            nnic : profile.getName(),
            ntype : profile.Eea,
         }),
         contentType : 'application/json;charset=utf-8',
         success : function(data) {
            console.log(data);
             if (data == 'yet') {
               console.log(data);
            } else if (data == 'fail') {
               console.log(data);
            } else if (data != null) {
               console.log(data);
               var session = sessionStorage.getItem("MemberIdx");
               console.log(session);
               console.log(typeof session);
               alert('구글로그인이 확인되었습니다.');
               location.replace("main1");

            }    
         },
         error : function(data) {
         /*    console.log('로그인 실패: ' + data);
            alert('로그인에 실패하였습니다.'); */
         },
         complete: function() {
            /* $('#Nemail').val(''),
            $('#Npw').val('') */
         }
      });
   }
   
   
   
   function init() {
      console.log('init');
      gapi.load('auth2',function() {
        console.log('auth2');
        window.gauth = gapi.auth2.init({
         client_id : '814845088421-c159c01iov4sppu7rugjaroke4njeggc.apps.googleusercontent.com'
      })
      gauth.then(function() {
         console.log('googleAuth success');
         //checkLoginStatus();
      }, function() {
         console.log('googleAuth fail');
      });
     });
   }
   
</script>
</head>
<body>

<%@include file="/WEB-INF/views/frame/header.jsp"%>

   <h5 style="color: black; text-align: center; padding: 100px; font-weight: bold;">로그인페이지</h5>
   <div style="text-align: center; margin-top: -60px;">
      <button
         style="border: 1px solid #82ccdd;border-radius:10px; background: #82ccdd; text-align: center; width: 600px;padding:10px;
         font-family: 'Noto Sans KR', sans-serif;"
         ><a href="<c:url value="/LoginForm" />" style="color:black">이메일로 로그인</a></button>
         
   </div>
   <div style="margin:10px auto;width:600px;">
         <span id="name"></span><input type="button" id="loginBtn" style="width:600px;height:46px;border: 1px solid #60a3bc;background: #60a3bc;border-radius:10px;
         cursor:pointer;font-family: 'Noto Sans KR', sans-serif;"  
         value="구글로 로그인하기" onclick="checkAuth()">
   </div>
   <!-- <div class="g-signin2" data-onsuccess="onSignIn" style="width:600px;height:46px;margin:0 auto;">구글로 로그인</div> -->
   <br><br>
   <%@include file="/WEB-INF/views/frame/footer.jsp"%>
   <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</body>
</html>