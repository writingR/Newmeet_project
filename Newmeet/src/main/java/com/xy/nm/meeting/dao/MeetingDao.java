package com.xy.nm.meeting.dao;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.xy.nm.meeting.domain.CategoryList;
import com.xy.nm.meeting.domain.MeetingInfo;
import com.xy.nm.meeting.domain.MeetingLcategory;
import com.xy.nm.meeting.domain.MeetingScategory;
import com.xy.nm.meeting.domain.RequestMeetingEdit;



public interface MeetingDao {
	// 대분류 카테고리 리스트
	public List<MeetingLcategory> lCategoryList();
	// 소분류 카테고리 리스트
	public List<MeetingScategory> sCategoryList(int big_idx);
	// 전체 리스트 중 좋아요 별점 순
	public List<MeetingInfo> LikeStarList(String likestar);
	// 대분류 별 리스트 순
	public List<CategoryList> LList(String category);
	// 모임 생성
	public int MeetingWrite(MeetingInfo meetingInfo);
	// 모임 삭제
	public int MoimDelete(int m_idx);
	// 모임 생성후 m_idx 뽑아오기
	public int SelectMidx(String m_name);
	// 모임 리스트
	public List<MeetingInfo> MeetingList();
	// 모임 수정
	public int MoimEdit(Map<String, Object> params);
	// 대표 이미지 수정
	public int ImageEdit(int m_idx,String m_img);
	// 모임 상세 정보 로그인
	public MeetingInfo MeetingInfo(int m_idx,int nidx);
	// 모임 상세 정보 비로그인
	public MeetingInfo MeetingInfo2(int m_idx);
	// 모임 회원인지 아닌지 확인
	public int MoimMember(int m_idx,int nidx);
	// 모임장인지 그냥 회원인지 확인
	public int MoimJang(int m_idx,int nidx);
	// 검색 기능
	public List<MeetingInfo> MoimSearch(String Keyword);
	// 좋아요 조건
	public MeetingInfo MeetingInfo3(int m_idx);
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
	// 좋아요 최신화
	public int LikeUpdate(int m_idx);
	// 별점 주기
	public int StarPush(int m_idx,int nidx,double ms_spoint);
	// 별점 상태 확인
	public int StarCheckPush(int m_idx,int nidx);
	// 별점 최신화
	public int StarUpdate(int m_idx,double ms_spoint);
}
