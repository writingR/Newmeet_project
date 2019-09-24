package com.xy.nm.review.service;

import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class ReviewDeleteService {

	private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
		
	public int delete(int rNum) {
			
		dao = template.getMapper(ReviewDaoInterface.class);
		
		return dao.deleteReview(rNum);
		
	}
	
}
