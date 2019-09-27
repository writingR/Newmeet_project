package com.xy.nm.review.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;
import com.xy.nm.review.domain.Review;

@Service("reviewService")
public class ReviewService {
	
	private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	public List<Review> getList(int nidx, int mNum, int sort, int page) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		final int LIST_PER_PAGE = 9;
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		String sortBy = "r_idx";
		
		if(sort==1) {
			sortBy = "r_idx";
		}else if(sort==2) {
			sortBy = "r_star";
		}else {
			sortBy = "r_like";
		}
		int startIndex = 0;
		
		startIndex = (page-1)*LIST_PER_PAGE;
		
		params.put("m_idx", mNum);
		params.put("nidx", nidx);
		params.put("sort", sortBy);
		params.put("startIndex", startIndex);
		params.put("LIST_PER_PAGE", LIST_PER_PAGE);
		
		return dao.getReviewList(params);
	}
	

	public int getCommentCount(int mNum) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		return dao.getReviewCount(mNum);
	}
	
	//최근 후기 리스트
	public List<Review> getRecentList(int mNum) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		final int LIST_PER_PAGE = 3;
		
		Map<String, Object> params = new HashMap<String, Object>();
				
		int startIndex = 0;
		
		params.put("m_idx", mNum);
		params.put("startIndex", startIndex);
		params.put("LIST_PER_PAGE", LIST_PER_PAGE);
		
		return dao.getRecentReviewList(params);
	}
	
	//리뷰 상세 정보
	public Review getReviewDetail(int nidx, int rNum, int mNum) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("nidx", nidx);
		params.put("r_idx", rNum);
		params.put("m_idx", mNum);
		
		return dao.getReviewDetail(params);
	}
	
	
	//리뷰 편집 정보
	public Review getReviewEditInfo(int rNum) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		return dao.getReviewEditInfo(rNum);
	}
	

}
