package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;

@Service("cancelService")
public class CalCancelMemService {

	
	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int calMemCancel(int c_idx,int nidx) {
		
		
		int rCnt = 0;
		
		dao = template.getMapper(CalDaoInterface.class);
		
		rCnt = dao.cancelCalMember(c_idx,nidx);
		
		return rCnt;
	}
}
