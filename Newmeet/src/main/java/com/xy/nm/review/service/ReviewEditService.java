package com.xy.nm.review.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class ReviewEditService {
	
	private ReviewDaoInterface dao;
		
	@Inject
	private SqlSessionTemplate template;
		
	public int edit(Map<String, Object> params) {
			
		dao = template.getMapper(ReviewDaoInterface.class);
		
		return dao.updateReview(params);
		
	}
	
}
