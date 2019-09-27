package com.xy.nm.meeting.domain;
// 모임 좋아요 테이블
public class MeetingLike {
	private int l_idx;	// 좋아요 테이블 인덱스 
	private int m_idx;	// 모임 pk
	private int nidx;	// 회원 pk
	private int l_like;	// 좋아요 생성 상태
	public int getL_idx() {
		return l_idx;
	}
	public void setL_idx(int l_idx) {
		this.l_idx = l_idx;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public int getNidx() {
		return nidx;
	}
	public void setNidx(int nidx) {
		this.nidx = nidx;
	}
	public int getL_like() {
		return l_like;
	}
	public void setL_like(int l_like) {
		this.l_like = l_like;
	}
	@Override
	public String toString() {
		return "MeetingLike [l_idx=" + l_idx + ", m_idx=" + m_idx + ", nidx=" + nidx + ", l_like=" + l_like + "]";
	}
	
	
	
	
	
}
