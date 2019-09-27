package com.xy.nm.meeting.domain;
// 소분류 테이블
public class MeetingScategory {
	private int small_idx;   // 소분류 테이블 인덱스
	private int big_idx;	// 대분류 테이블 pk
	private String small_ca;  // 소분류 카테고리
	
	public int getSmall_idx() {
		return small_idx;
	}
	public void setSmall_idx(int small_idx) {
		this.small_idx = small_idx;
	}
	public int getBig_idx() {
		return big_idx;
	}
	public void setBig_idx(int big_idx) {
		this.big_idx = big_idx;
	}
	public String getSmall_ca() {
		return small_ca;
	}
	public void setSmall_ca(String small_ca) {
		this.small_ca = small_ca;
	}
	@Override
	public String toString() {
		return "MeetingScategory [small_idx=" + small_idx + ", big_idx=" + big_idx + ", small_ca=" + small_ca + "]";
	}
	
	
}
