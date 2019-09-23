package com.xy.nm.meeting.domain;

public class CategoryList {
	
	private int m_idx;         // 모임 인덱스
	private String m_name;	   // 모임 제목
	private String m_img;      // 모임 대표이미지
	private String m_cont;     // 모임 소개글
	private double m_stotal;      // 모임 별점 총합
	private int m_star;        // 모임 별점참여인원
	private int m_like;        // 모임 좋아요 개수
	private String small_ca;       // 소분류 이름
	private String big_ca;		// 대분류 이름
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_img() {
		return m_img;
	}
	public void setM_img(String m_img) {
		this.m_img = m_img;
	}
	public String getM_cont() {
		return m_cont;
	}
	public void setM_cont(String m_cont) {
		this.m_cont = m_cont;
	}
	public double getM_stotal() {
		return m_stotal;
	}
	public void setM_stotal(double m_stotal) {
		this.m_stotal = m_stotal;
	}
	public int getM_star() {
		return m_star;
	}
	public void setM_star(int m_star) {
		this.m_star = m_star;
	}
	public int getM_like() {
		return m_like;
	}
	public void setM_like(int m_like) {
		this.m_like = m_like;
	}
	public String getSmall_ca() {
		return small_ca;
	}
	public void setSmall_ca(String small_ca) {
		this.small_ca = small_ca;
	}
	public String getBig_ca() {
		return big_ca;
	}
	public void setBig_ca(String big_ca) {
		this.big_ca = big_ca;
	}
	
	@Override
	public String toString() {
		return "CategoryList [m_idx=" + m_idx + ", m_name=" + m_name + ", m_img=" + m_img + ", m_cont=" + m_cont
				+ ", m_stotal=" + m_stotal + ", m_star=" + m_star + ", m_like=" + m_like + ", small_ca=" + small_ca
				+ ", big_ca=" + big_ca + "]";
	}
	
	
	
}
