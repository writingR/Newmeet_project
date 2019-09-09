package com.xy.nm.meeting.domain;
// 대분류 테이블
public class MeetingLcategory {
	private int big_idx; // 대분류 테이블 인덱스
	private String big_ca;  // 대분류 카테고리
	
	public int getBig_idx() {
		return big_idx;
	}
	public void setBig_idx(int big_idx) {
		this.big_idx = big_idx;
	}
	public String getBig_ca() {
		return big_ca;
	}
	public void setBig_ca(String big_ca) {
		this.big_ca = big_ca;
	}
	@Override
	public String toString() {
		return "MeetingLcategory [big_idx=" + big_idx + ", big_ca=" + big_ca + "]";
	}
	
}
