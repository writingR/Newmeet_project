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
	// 모임 상세 정보 로그인
	public MeetingInfo MeetingInfo(int m_idx,int nidx);
	// 모임 상세 정보 비로그인
	public MeetingInfo MeetingInfo2(int m_idx);
	// 좋아요 상태 확인 ( 잇는지 없는지 )
	public int LikeCheck(int m_idx, int nidx);
	// 좋아요 상태 넣기
	public int LikePush(int m_idx,int nidx);
	// 좋아요 상태 확인 (잇을때 눌럿는지 안눌럿는지)
	public int LikeCheckPush(int m_idx,int nidx);
	// 좋아요 올리기
	public int Like(int m_idx,int nidx);
	// 좋아요 내리기
	public int Likedown(int m_idx,int nidx);
}
