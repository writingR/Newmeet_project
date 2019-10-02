package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;
import com.xy.nm.calendar.domain.CalendarInfo;

@Service("detailCalService")
public class CalDetailService {

	
	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	
	public CalendarInfo getDetailData(int c_idx) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		CalendarInfo calInfo = dao.selectCalByIdx(c_idx);
		
		return calInfo;
	}
}
