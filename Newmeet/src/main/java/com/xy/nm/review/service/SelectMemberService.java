package com.xy.nm.review.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class SelectMemberService {
	
	private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	public String select(int nidx) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		return dao.selectMember(nidx);

	}
	
	
}
