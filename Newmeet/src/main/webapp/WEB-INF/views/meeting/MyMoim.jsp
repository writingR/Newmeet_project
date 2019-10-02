<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%@include file="/WEB-INF/views/frame/link.jsp"%>
</head>
<body>
<%@include file="/WEB-INF/views/frame/header.jsp"%>
<img alt="" src="static/img/banner2.png">
<br><br><br>
<h1 style="width:400px;margin:0 auto;color:black;font-size:50px;font-weight:bold;">프로필 관리</h1>
<br>
<table style="text-align: center; margin: 0 auto;">
      <thead>
         <tr style="padding-bottom: 10px;">
            <th style="padding-right: 120px; padding-bottom: 10px;">모임 사진</th>
            <th style="padding-right: 120px; padding-bottom: 10px;">모임 이름</th>
            <th style="padding-right: 120px; padding-bottom: 10px;">좋아요</th>
            <th style="padding-right: 120px; padding-bottom: 10px;">별점</th>
            <th style="padding-right: 120px; padding-bottom: 10px;">모임보러가기</th>
         </tr>
      </thead>
		<tbody id="moim">
			<c:forEach var="info" items="${MyMoim}" step="1">
				<tr style="padding-bottom: 10px;">
					<td style="padding-right: 120px; padding-bottom: 10px;"><img src="http://localhost:8080/nm/uploadfile/${info.m_img}" style="width: 200px; height: 150px;"></td>
					<td style="padding-right: 120px; padding-bottom: 10px;">${info.m_name}</td>
					<td style="padding-right: 120px; padding-bottom: 10px;">${info.m_like}</td>
					<td style="padding-right: 120px; padding-bottom: 10px;">${info.m_stotal/info.m_star}</td>
					<td style="padding-right: 120px; padding-bottom: 10px;"><a href="<c:url value="/moimInfo"/>?m_idx=${info.m_idx}" style="font-weight: bold; font-size: 25px; text-align: center;">Go</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
		

	<script>
	function moimdelete(m_idx){
			if(confirm('모임을 삭제하시겠습니까 ?')){
				$.ajax({
					
					url : 'http://localhost:8080/nm/meeting/'+ m_idx,
					type : 'DELETE',
					success : function(data) {
						
						if(data == 1){
							alert('삭제완료 ~')
							location.reload();
						}else{
							alert('삭제안댐')
						}
						
					}
				
			});
			}else{
				return false;
			}
			
			
		}
		
	</script>

	<%@include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>

</body>
</html>