package com.xy.nm.meeting.domain;
// 별점테이블
public class MeetingStar {
	private int sm_idx;         // 별점 테이블 pk
	private int m_idx;			// 모임 pk
	private int nidx;           // 회원 pk
	private int ms_star;		 // 별점 생성 상태
	private double ms_spoint; // 별점 점수
	public int getSm_idx() {
		return sm_idx;
	}
	public void setSm_idx(int sm_idx) {
		this.sm_idx = sm_idx;
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
	public int getMs_star() {
		return ms_star;
	}
	public void setMs_star(int ms_star) {
		this.ms_star = ms_star;
	}
	public double getMs_spoint() {
		return ms_spoint;
	}
	public void setMs_spoint(double ms_spoint) {
		this.ms_spoint = ms_spoint;
	}
	
	@Override
	public String toString() {
		return "MeetingStar [sm_idx=" + sm_idx + ", m_idx=" + m_idx + ", nidx=" + nidx + ", ms_star=" + ms_star
				+ ", ms_spoint=" + ms_spoint + "]";
	}
	
	
	
	
}
