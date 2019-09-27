package com.xy.nm.review.service;


import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class ReviewWriteService {

	private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	public int write(Map<String, Object> params) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		return dao.insertReview(params);
	}
	
	//모임 멤버 체크
	public int checkMMember(int nidx, int mNum) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("nidx", nidx);
		params.put("m_idx", mNum);
		
		return dao.checkmmId(params);
	}
	
}
