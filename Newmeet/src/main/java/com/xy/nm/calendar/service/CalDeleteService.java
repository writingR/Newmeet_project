package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;

@Service("deleteCalService")
public class CalDeleteService {

	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int calDelete(int c_idx) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		return dao.deleteCalendar(c_idx);
	}
	
}
