package com.xy.nm.review.dao;

import java.util.List;
import java.util.Map;

import com.xy.nm.review.domain.Comment;
import com.xy.nm.review.domain.Review;


public interface ReviewDaoInterface {

		//리스트 검색
		public List<Review> getReviewList(Map<String, Object> param);
		
		//리스트 번호 검색
		public int getReviewCount(int m_idx);
		
		//모임의 멤버인지 체크
		public int checkmmId(Map<String, Object> param);
		
		//좋아요 상태 세기
		public int selectCountLikeState(Map<String, Object> param);
		
		//좋아요 상태 확인
		public int selectLikeState(Map<String, Object> param);
		
		//좋아요 업데이트
		public int updateLike(Map<String, Object> param);
		
		//리뷰 좋아요 업데이트
		public int updateReviewLike(Map<String, Object> param);
		
		//좋아요 삽입
		public int insertLike(Map<String, Object> param);
		
		//리뷰 작성
		public int insertReview(Map<String, Object> param);
		
		//최근 리스트 검색
		public List<Review> getRecentReviewList(Map<String, Object> param);

		//상세 리스트 검색
		public Review getReviewDetail(Map<String, Object> param);
		
		//댓글 개수 검색
		public int getCommentCount(int r_idx);
		
		//댓글 리스트 검색
		public List<Comment> getCommentList(Map<String, Object> param);
		
		//댓글 작성
		public int insertComment(Map<String, Object> param);
		
		//리뷰 편집 정보
		public Review getReviewEditInfo(int rNum);
		
		//리뷰 편집
		public int updateReview(Map<String, Object> param);
		
		//리뷰 삭제
		public int deleteReview(int rNum);
		
		//댓글 편집
		public int updateReviewComment(Map<String, Object> param);
		
		//댓글 작성자 확인
		public int checkComment(Map<String, Object> param);
		
		//댓글 삭제
		public int deleteReviewComment(int rd_idx);
		
		//멤버 닉네임 추출
		public String selectMember(int nidx);
}
