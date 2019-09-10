package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;
import com.xy.nm.calendar.domain.CalendarInfo;
import com.xy.nm.calendar.domain.RequestCalendar;

@Service("createService")
public class CalCreateService {

	
	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int create(RequestCalendar rCal) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		CalendarInfo calInfo = rCal.toCalendarInfo();
		
		int rCnt = dao.createCalendar(calInfo);
		
		
		return rCnt;
	}
	
}
