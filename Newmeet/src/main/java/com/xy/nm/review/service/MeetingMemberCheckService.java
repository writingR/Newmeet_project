package com.xy.nm.review.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class MeetingMemberCheckService {
	
	private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	public boolean check(int nidx) {
		
		boolean result = false;
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		int chk = dao.checkmmId(nidx);
		
		if(chk>0) {
			result = true;
		}
		
		return result;
	}
	
}
