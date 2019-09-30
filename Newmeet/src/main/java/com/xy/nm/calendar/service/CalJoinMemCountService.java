package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;

@Service("joinMemCountService")
public class CalJoinMemCountService {

	
	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int count(int c_idx) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		return dao.countCalMember(c_idx);
	}
}
