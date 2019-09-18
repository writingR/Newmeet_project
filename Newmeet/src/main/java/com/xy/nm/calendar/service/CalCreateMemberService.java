package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;

@Service("createMservice")
public class CalCreateMemberService {

	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int calMemberCreate(int c_idx, int nidx) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		int rCnt = dao.createCalMember(c_idx, nidx);
		
		return rCnt;
	}
	
}
