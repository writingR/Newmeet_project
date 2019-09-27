<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<style>
input[type=checkbox] {
           position: absolute;
           visibility: hidden;
       }


#All>label{
    background: url("static/img/Chk.png") no-repeat;
    padding: 14px;
}
.item>label{
    background: url("static/img/Chk.png") no-repeat;
}

.item:checked+label{
    background: url("static/img/ChkOn.png") no-repeat;
}
.info{
    width: 450px;
    height: 80px;
    border: 1px solid #bdc3c7;
    overflow: auto;
    font-size: 10px;
    padding: 3px; 
}
.btn{
   margin-left: 39%;
   margin-top: 30px;
}
#cancleBtn {
    display: inline-block;
    color: white;
    font-size: 20px;
    width: 220px;
    padding: 10px;
    border-radius: 5px;
}
#agreeBtn {
    display: inline-block;
    color: white;
    font-size: 20px;
    width: 220px;
    padding: 10px;
    border-radius: 5px;
}
.agree1{
    display: inline-block;
    color: white;
    font-size: 20px;
    width: 228px;
    padding: 25px;
}
input[type="checkbox"]{
    position: absolute;
}
input[type="checkbox"]+label{
    position: relative;
}
input[type="checkbox"]:checked+label{
    background: url("static/img/ChkOn.png") no-repeat;
}
#allCheck[type="checkbox"]:checked+label{
    background: url("static/img/ChkOn.png") no-repeat;
}
</style>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
        $(document).ready(function(){
    
            $("#agreeBtn").click(function(){    
                if($("#chk1").is(":checked") == false){
                    alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                    return;
                }else if($("#chk2").is(":checked") == false){
                    alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다..");
                    return;
                }else{
                    $("#regForm").submit();
                }
            });    
        });
    </script>

<body>
<%@include file="/WEB-INF/views/frame/header.jsp"%>
	<h5 style="color: black; text-align: center; padding: 60px; font-weight: bold;">이용약관</h5>
	   <form id="regForm" action="JoinForm">
	   <div style="margin-top:-80px;" id="agreeService">
        
        
        <div class="item" style="margin-left: 39%;margin-top: 50px;">
            <input type="checkbox" id="chk1" style="margin-left: -1000px;" name="agree1" class="ched">
            <label for="chk1" id="chk1">
            <span style="display: inline-block;margin-left: 25px;font-weight: 660;"> 뉴밋 이용약관 동의<span style="font-size: 12px;
            color:#F97F51;font-weight: 600;">(필수)</span>
            </span>
            </label>
            <p class="info">
                        정보통신망법 규정에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.<br><br>1. 수집하는 개인정보<br>이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.<br><br>회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.<br>- 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.<br>- 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.<br><br>서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.<br>NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
                    </p>
        </div>
        
        <div class="item" style="margin-left: 39%;margin-top: 30px;">
            <input type="checkbox" id="chk2" style="margin-left: -1000px;" name="agree2" class="ched">
            <label for="chk2" id="chk2">
            <span style="display: inline-block;margin-left: 25px;font-weight: 660;">개인정보 수집 및 이용에 대한 안내<span style="font-size: 12px;color:#F97F51;font-weight: 600;">(필수)</span>
            </span>
            </label>
            <p class="info">
                        정보통신망법 규정에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.<br><br>1. 수집하는 개인정보<br>이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.<br><br>회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.<br>- 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.<br>- 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.<br><br>서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.<br>NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
                    </p>
        </div>        
        
         <div class="item" style="margin-left: 39%;margin-top: 30px;">
            <input type="checkbox" id="chk3" style="margin-left: -1000px;" name="agree3" class="ched">
            <label for="chk3">
            <span style="display: inline-block;margin-left: 25px;font-weight: 660;">위치정보 이용약관 동의<span style="font-size: 12px;color:#bdc3c7;font-weight: 400;">(선택)</span>
            </span>
            </label>
            <p class="info">
                        정보통신망법 규정에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.<br><br>1. 수집하는 개인정보<br>이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.<br><br>회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.<br>- 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.<br>- 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.<br><br>서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.<br>NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
                    </p></div>
   <%--     
          	<button type="button" class="btn btn-secondary" style="margin-left:740px;" id="cancleBtn">취소</button>
          	<!-- <input type="button" value="취소" style=" background: #7f8c8d; margin-left:740px;"> -->
          	<a href="<c:url value="/JoinForm" />"><input type="submit" value="완료" style="background: #34495e;" class="agree1"></a>
			<a href="<c:url value="/JoinForm" />"><button type="button" class="btn btn-dark" id="agreeBtn" style="margin-left:-1px;" onclick="agree()">완료</button></a> --%>
			
          	
            <input type="button" id="agreeBtn"  class="btn btn-dark" value="NEXT"/>

          
        
       <!--  <div class="btn">
            <input type="button" value="비동의" style=" background: #8e8e8e">
            <a href="naver_member2.html"><input type="submit" value="동의" style="background: #08a600" class="agree1"></a>
            <p style="font-size: 12px;text-align: left;margin-left: 40px;font-weight: 100px;color:#636e72">회사, 동아리 등 단체에서 사용할 ID가 필요하세요? <span style="text-decoration: underline;font-weight: 500;color: black">단체 회원 가입</span></p>
        </div> -->
        </div>
        </form>
        <br><br>
<%@include file="/WEB-INF/views/frame/footer.jsp"%>
<%@include file="/WEB-INF/views/frame/sc.jsp"%>	
</body>
</html>