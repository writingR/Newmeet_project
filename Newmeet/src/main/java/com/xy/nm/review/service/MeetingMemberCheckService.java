package com.xy.nm.review.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class MeetingMemberCheckService {
	
	private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	public boolean check(int nidx, int mNum) {
		
		boolean result = false;
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("nidx", nidx);
		params.put("m_idx", mNum);
		
		int chk = dao.checkmmId(params);
		
		if(chk>0) {
			result = true;
		}
		
		return result;
	}
	
	
}
