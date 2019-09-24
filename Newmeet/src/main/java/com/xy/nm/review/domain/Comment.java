package com.xy.nm.review.domain;

public class Comment {
	
	private int rd_idx;
	private String rd_content;
	private String rd_date;
	private int r_idx;
	private int nidx;
	private String nphoto;
	private String nnic;
	
	
	
	public String getNphoto() {
		return nphoto;
	}
	public void setNphoto(String nphoto) {
		this.nphoto = nphoto;
	}
	public String getNnic() {
		return nnic;
	}
	public void setNnic(String nnic) {
		this.nnic = nnic;
	}
	public int getRd_idx() {
		return rd_idx;
	}
	public void setRd_idx(int rd_idx) {
		this.rd_idx = rd_idx;
	}
	public String getRd_content() {
		return rd_content;
	}
	public void setRd_content(String rd_content) {
		this.rd_content = rd_content;
	}
	public String getRd_date() {
		return rd_date;
	}
	public void setRd_date(String rd_date) {
		this.rd_date = rd_date;
	}
	public int getR_idx() {
		return r_idx;
	}
	public void setR_idx(int r_idx) {
		this.r_idx = r_idx;
	}
	public int getNidx() {
		return nidx;
	}
	public void setNidx(int nidx) {
		this.nidx = nidx;
	}
	
	
	
}
