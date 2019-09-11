package com.xy.nm.review.dao;

import java.util.List;
import java.util.Map;

import com.xy.nm.review.domain.Review;


public interface ReviewDaoInterface {

		//리스트 검색
		public List<Review> getReviewList(Map<String, Object> param);
		
		//리스트 번호 검색
		public int getReviewCount(int m_idx);
		
		//모임의 멤버인지 체크
		public int checkmmId(int nidx);
		
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
		
		
}
