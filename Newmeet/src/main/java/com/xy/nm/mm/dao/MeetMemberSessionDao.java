package com.xy.nm.mm.dao;

import java.util.List;
import java.util.Map;

import com.xy.nm.mm.domain.MeetMemberInfo;
import com.xy.nm.mm.domain.SearchParam;

public interface MeetMemberSessionDao {

	//모임에 멤버로 참여
	public int mmInsert(MeetMemberInfo mmInfo);
	
	//모임에 참여한 모임원 전체 출력
	public List<MeetMemberInfo> selectAllList();
	
	//페이징 처리와 검색을 포함한 모임원 리스트
	public List<MeetMemberInfo> selectList(Map<String, Object> params);
	
	//게시물의 개수
	public int selectTotalCount(int m_idx);
	
	//특정 회원의 정보 확인하기
	public MeetMemberInfo selectByidx(int mm_idx);
	
	//특정 회원 강퇴하기
	public int mmDelete(int mm_idx);
	
	//모임장 승격
	public int levelUp(int mm_idx);
	
	
	
}
