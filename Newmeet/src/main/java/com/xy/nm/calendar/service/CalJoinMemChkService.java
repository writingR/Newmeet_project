package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;

@Service("joinChkService")
public class CalJoinMemChkService {

	
	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int calJoinChk(int c_idx, int nidx) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		int rCnt = dao.selectCalMember(c_idx, nidx);
		
		return rCnt;
	}
	
}
