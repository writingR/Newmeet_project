package com.xy.nm.calendar.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;
import com.xy.nm.calendar.domain.CalendarInfo;

@Service("listService")
public class CalListService {

	
	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<CalendarInfo> list() {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		List<CalendarInfo> calList = new ArrayList<CalendarInfo>();
		
		calList = dao.calList();
		
		return calList;
	}
}
