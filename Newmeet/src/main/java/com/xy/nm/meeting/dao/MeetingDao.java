package com.xy.nm.meeting.dao;

import java.util.List;

import com.xy.nm.meeting.domain.MeetingInfo;
import com.xy.nm.meeting.domain.MeetingLcategory;
import com.xy.nm.meeting.domain.MeetingScategory;



public interface MeetingDao {
	// 대분류 카테고리 리스트
	public List<MeetingLcategory> lCategoryList();
	// 소분류 카테고리 리스트
	public List<MeetingScategory> sCategoryList(int big_idx);
	// 모임 생성
	public int MeetingWrite(MeetingInfo meetingInfo);
	// 모임 리스트
	public List<MeetingInfo> MeetingList();
	// 모임 상세 정보
	public MeetingInfo MeetingInfo(int m_idx);
	
}
