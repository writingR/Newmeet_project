package com.xy.nm.calendar.dao;

import java.util.List;

import com.xy.nm.calendar.domain.CalJoinMember;
import com.xy.nm.calendar.domain.CalendarEdit;
import com.xy.nm.calendar.domain.CalendarInfo;

public interface CalDaoInterface {

	// 일정 등록하기
	public int createCalendar(CalendarInfo calInfo);
	
	// 일정 리스트
	public List<CalendarInfo> calList(int m_idx);
	
	// 일정 상세 정보
	public CalendarInfo selectCalByIdx(int id);
	
	// 일정 삭제하기
	public int deleteCalendar(int c_idx);
	
	// 일정 수정하기
	public int updateCalendar(CalendarEdit editCal);
	
	// 일정 참가하기
	public int createCalMember(int c_idx, int nidx);
	
	// 현재 일정 참가 인원
	public int countCalMember(int c_idx);
	
	// 일정 참가멤버 리스트
	public List<CalJoinMember> joinCalMember(int c_idx);
	
	// 일정 참가여부 확인
	public int selectCalMember(int c_idx, int nidx);
	
	// 모임장 일정멤버 추방
	public int deleteCalMember(int cm_idx);
	
	// 일정참가자 일정참여 취소
	public int cancelCalMember(int c_idx, int nidx);
	
	// 모임멤버 레벨에 따라 일정 버튼 출력
	public int getMemLevel(int m_idx,int nidx);
	
	
	
	
}
