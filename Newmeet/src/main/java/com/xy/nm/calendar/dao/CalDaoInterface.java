package com.xy.nm.calendar.dao;

import java.util.List;

import com.xy.nm.calendar.domain.CalendarInfo;

public interface CalDaoInterface {

	
	public int createCalendar(CalendarInfo calInfo);

	public List<CalendarInfo> calList();
	
	public CalendarInfo selectCalByIdx(int id);
	
	public int deleteCalendar(int c_idx);
	
	public int updateCalendar(CalendarInfo calInfo);
}
