package com.xy.nm.calendar.dao;

import java.util.List;

import com.xy.nm.calendar.domain.CalJoinMember;
import com.xy.nm.calendar.domain.CalendarInfo;

public interface CalDaoInterface {

	
	public int createCalendar(CalendarInfo calInfo);

	public List<CalendarInfo> calList(int m_idx);
	
	public CalendarInfo selectCalByIdx(int id);
	
	public int deleteCalendar(int c_idx);
	
	public int updateCalendar(CalendarInfo calInfo);
	
	public int createCalMember(int c_idx, int nidx);
	
	public int countCalMember(int c_idx);
	
	public List<CalJoinMember> joinCalMember(int c_idx);
	
	public int selectCalMember(int c_idx, int nidx);
	
}
