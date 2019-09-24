package com.xy.nm.review.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class ReviewCommentDeleteService {

private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
		
	public int delete(int rdNum) {
			
		dao = template.getMapper(ReviewDaoInterface.class);
		
		return dao.deleteReviewComment(rdNum);
		
	}
	
}
