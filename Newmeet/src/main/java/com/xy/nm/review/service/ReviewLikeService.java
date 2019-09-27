package com.xy.nm.review.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class ReviewLikeService {

	private ReviewDaoInterface dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	public int likeCheck(int nidx, int r_idx) {
		
		dao = template.getMapper(ReviewDaoInterface.class);
		int cnt = 0;
		
		Map<String, Object> selectMap = new HashMap<String, Object>();
		selectMap.put("nidx", nidx);
		selectMap.put("r_idx", r_idx);
		
		int likeCnt = dao.selectCountLikeState(selectMap);
		
		if(likeCnt>0) {
			int likeStat = dao.selectLikeState(selectMap);
			if(likeStat==1) {
				selectMap.put("plus_minus", 0);
				cnt = dao.updateLike(selectMap);
				if(cnt>0) {
					selectMap.put("plus_minus", -1);
					cnt = dao.updateReviewLike(selectMap);
				}
			}else {
				selectMap.put("plus_minus", 1);
				cnt = dao.updateLike(selectMap);
				if(cnt>0) {
					selectMap.put("plus_minus", 1);
					cnt = dao.updateReviewLike(selectMap);
				}
			}
		}else {
			cnt = dao.insertLike(selectMap);
			if(cnt>0) {
				selectMap.put("plus_minus", 1);
				cnt = dao.updateReviewLike(selectMap);
			}
		}
		
		return cnt;
	}

	
	
}
