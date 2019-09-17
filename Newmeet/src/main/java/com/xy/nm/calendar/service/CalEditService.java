package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;
import com.xy.nm.calendar.domain.CalendarInfo;
import com.xy.nm.calendar.domain.RequestCalendar;

@Service("editService")
public class CalEditService {

	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	
//	
//	public CalendarInfo getEditFormData(int c_idx) {
//		
//		dao = template.getMapper(CalDaoInterface.class);
//		
//		CalendarInfo calInfo = dao.selectCalByIdx(c_idx);
//		
//		return calInfo;
//	}
	
	public int calEdit(int c_idx, RequestCalendar reqCal) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		CalendarInfo calInfo = reqCal.toCalendarInfo();
		
		calInfo.setC_idx(c_idx);
		
		int rCnt = dao.updateCalendar(calInfo);
		
		return rCnt;
	}
}
