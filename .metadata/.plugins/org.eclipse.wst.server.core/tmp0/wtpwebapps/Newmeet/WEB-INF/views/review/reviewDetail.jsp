<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
			<td>r_idx</td>
			<td>r_title</td>
			<td>r_content</td>
			<td>r_star</td>
			<td>r_date</td>
			<td>r_like</td>
			<td>m_idx</td>
			<td>nidx</td>
			<td>nphoto</td>
			<td>r_img</td>
			<td>rlike_state</td>
			<td>좋아요버튼</td>
	</tr>
<c:forEach var="review" items="${recentReviewList}">

	<tr>
			<td>${review.r_idx}</td>
			<td>${review.r_title}</td>
			<td>${fn:substring(review.r_content.replaceAll('(<([^>]+)>)',''),0,100)}</td>
			<td>${review.r_star}</td>
			<td>${review.r_date}</td>
			<td>${review.r_like}</td>
			<td>${review.m_idx}</td>
			<td>${review.nidx}</td>
			<td>${review.nphoto}</td>
			<td>${review.r_img}</td>
			<td>${review.rlike_state}</td>
		</tr>
</c:forEach>
</table>

<br>
<br>

<table>
<tr>
<td>${reviewDetail.r_idx}</td>
			<td>${reviewDetail.r_title}</td>
			<td>${fn:substring(reviewDetail.r_content.replaceAll('(<([^>]+)>)',''),0,100)}</td>
			<td>${reviewDetail.r_star}</td>
			<td>${reviewDetail.r_date}</td>
			<td>${reviewDetail.r_like}</td>
			<td>${reviewDetail.m_idx}</td>
			<td>${reviewDetail.nidx}</td>
			<td>${reviewDetail.nphoto}</td>
			<td>${reviewDetail.r_img}</td>
			<td>${reviewDetail.rlike_state}</td>
			<td>${reviewDetail.nnic}</td>
			</table>
<br>
<br>

<h1>${count }</h1>





<table>
<tr>
			<td>rd_idx</td>
			<td>rd_content</td>
			<td>rd_date</td>
			<td>r_idx</td>
			<td>nidx</td>
			<td>nphoto</td>
			<td>nnic</td>
	</tr>
<c:forEach var="comment" items="${commentList}">

	<tr>
			<td>${comment.rd_idx}</td>
			<td>${comment.rd_content}</td>
			<td>${comment.rd_date}</td>
			<td>${comment.r_idx}</td>
			<td>${comment.nidx}</td>
			<td>${comment.nphoto}</td>
			<td>${comment.nnic}</td>
		</tr>
</c:forEach>
</table>







select 1개-후기 ridx로 뽑기 - 댓글 테이블, 회원 테이블
댓글 내용, 날짜, 작성자 사진, 작성자 닉네임,

댓글 idx-수정, 삭제 ( 작성자일때 )

------------------완료--------------------

select 1개 - 후기 테이블
최근 게시글 제목, 대표이미지, 날짜, 게시글 번호  -- 3개 




select 1개-후기 ridx로 뽑기 - 후기 테이블, 회원 테이블, 좋아요 테이블
제목,내용,별점,대표이미지, 좋아요, 좋아요 상태
후기 작성자 사진, 닉네임

후기 idx-수정, 삭제 ( 작성자일때 )



count 1개- 후기 ridx - 댓글 테이블- 총 개수





</body>
</html>