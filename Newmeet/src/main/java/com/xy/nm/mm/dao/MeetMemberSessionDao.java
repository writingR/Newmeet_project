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
	public MeetMemberInfo selectByidx(Map<String, Object> params);
	
	//특정 회원 강퇴하기
	public int mmDelete(Map<String, Object> params);
	
	//자기 스스로 모임 탈퇴하기
	public int mmDeleteSelf(Map<String, Object> params);
	
	//모임장 승격
	public int levelUp(int mm_idx);
	
	//특정 모임의 특정 유저가 작성한 리뷰 리스트
	public List<MeetMemberInfo> selectReviewList(Map<String, Object> params);
	
	//특정 모임의 특정 유저가 작성한 리뷰 리스트의 개수
	public int selectReviewListCount(Map<String, Object> params);
	
	//특정 모임의 특정 유저가 작성한 리뷰 댓글 목록
	public List<MeetMemberInfo> selectRcommentList(Map<String, Object> params);
	
	//특정 모임의 특정 유저가 작성한 리뷰 댓글 리스트의 개수
	public int selectRcommentListCount(Map<String, Object> params);
	
	//특정 모임의 특정 유저가 가입한 모든 모임의 목록
	public List<MeetMemberInfo> selectMeetingList(Map<String, Object> params);
	
	//특정 모임의 특정 유저가 가입한 모든 모임 리스트의 개수
	public int selectMeetingListCount(Map<String, Object> params);
	
	//특정 모임에 들어온 유저가 모임멤버에 들어와있는 멤버인지 체크 
	public int checkMember(Map<String, Object> params);

	//특정 모임의 특정 유저가 모임장인지 아닌지 체크
	public int checkLeader(Map<String, Object> params);
	
	//위의 dao를 보조하는 sql
	public MeetMemberInfo checkLeaderside(int m_idx);
	
}
