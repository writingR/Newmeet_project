package com.xy.nm.calendar.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;
import com.xy.nm.calendar.domain.CalendarInfo;

@Service("listCalService")
public class CalListService {

	
	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<CalendarInfo> list(int m_idx) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		List<CalendarInfo> calList = new ArrayList<CalendarInfo>();
		
		calList = dao.calList(m_idx);
		
		return calList;
	}
}
