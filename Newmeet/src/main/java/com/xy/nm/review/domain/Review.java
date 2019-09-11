package com.xy.nm.review.domain;

public class Review {
	private int r_idx;
	private String r_title;
	private String r_content;
	private Double r_star;
	private String r_date;
	private int r_like;
	private int m_idx;
	private int nidx;
	private String nphoto;
	private String r_img;
	private int rlike_state;
	private String nnic;
	
	
	
	public String getNnic() {
		return nnic;
	}
	public void setNnic(String nnic) {
		this.nnic = nnic;
	}
	public int getRlike_state() {
		return rlike_state;
	}
	public void setRlike_state(int rlike_state) {
		this.rlike_state = rlike_state;
	}
	public String getR_img() {
		return r_img;
	}
	public void setR_img(String r_img) {
		this.r_img = r_img;
	}
	public int getR_idx() {
		return r_idx;
	}
	public void setR_idx(int r_idx) {
		this.r_idx = r_idx;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public Double getR_star() {
		return r_star;
	}
	public void setR_star(Double r_star) {
		this.r_star = r_star;
	}
	public String getR_date() {
		return r_date;
	}
	public void setR_date(String r_date) {
		this.r_date = r_date;
	}
	public int getR_like() {
		return r_like;
	}
	public void setR_like(int r_like) {
		this.r_like = r_like;
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
	public String getNphoto() {
		return nphoto;
	}
	public void setNphoto(String nphoto) {
		this.nphoto = nphoto;
	}
	
	
	
	
	
}
