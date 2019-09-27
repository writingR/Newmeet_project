package com.xy.nm.review.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;
import com.xy.nm.review.domain.Comment;

@Service
public class ReviewCommentService {
	
	private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	
	public int getCommentCount(int rNum) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		
		return dao.getCommentCount(rNum);
	}
	
	//댓글 리스트
	public List<Comment> getCommentList(int rNum,  int page) {
				
			dao = template.getMapper(ReviewDaoInterface.class);
				
			final int LIST_PER_PAGE = 10;
				
			Map<String, Object> params = new HashMap<String, Object>();
						
			int startIndex = (page-1)*LIST_PER_PAGE;
				
			params.put("r_idx", rNum);
			params.put("startIndex", startIndex);
			params.put("LIST_PER_PAGE", LIST_PER_PAGE);
				
			return dao.getCommentList(params);
	}
	
}
