package com.xy.nm.review.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class ReviewCommentMemberCheckService {

private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	public int checkWriter(int nidx, int rdNum) {
				
		dao = template.getMapper(ReviewDaoInterface.class);
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("nidx", nidx);
		params.put("rd_idx", rdNum);
		
		int chk = dao.checkComment(params);
		
		return chk;
	}
	
	
}
