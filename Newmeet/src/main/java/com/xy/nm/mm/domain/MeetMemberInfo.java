package com.xy.nm.mm.domain;

import java.util.Date;

public class MeetMemberInfo {
	
	private int mm_idx;
	private int m_idx;
	private int mm_level;
	private int nidx;
	private String nemail;
	private String npw;
	private String nphoto;
	private String nnic;
	private String ntype;
	private String verify;
	private String code;
	private String m_name;
	private String m_img;
	private String m_cont;
	private double m_stotal;
	private int m_star;
	private int small_idx;
	private int m_like;
	private int rd_idx;
	private String rd_content;
	private Date rd_date;
	private int r_idx;
	private String r_title;
	private String r_content;
	private double r_star;
	private Date r_date;
	private int r_like;
	private String r_img;
	
	public MeetMemberInfo() {
	
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
	public int getSmall_idx() {
		return small_idx;
	}
	public void setSmall_idx(int small_idx) {
		this.small_idx = small_idx;
	}
	public int getM_like() {
		return m_like;
	}
	public void setM_like(int m_like) {
		this.m_like = m_like;
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
	public Date getRd_date() {
		return rd_date;
	}
	public void setRd_date(Date rd_date) {
		this.rd_date = rd_date;
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
	public double getR_star() {
		return r_star;
	}
	public void setR_star(double r_star) {
		this.r_star = r_star;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	public int getR_like() {
		return r_like;
	}
	public void setR_like(int r_like) {
		this.r_like = r_like;
	}
	public String getR_img() {
		return r_img;
	}
	public void setR_img(String r_img) {
		this.r_img = r_img;
	}
	public int getMm_idx() {
		return mm_idx;
	}
	public void setMm_idx(int mm_idx) {
		this.mm_idx = mm_idx;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public int getMm_level() {
		return mm_level;
	}
	public void setMm_level(int mm_level) {
		this.mm_level = mm_level;
	}
	public int getNidx() {
		return nidx;
	}
	public void setNidx(int nidx) {
		this.nidx = nidx;
	}
	public String getNemail() {
		return nemail;
	}
	public void setNemail(String nemail) {
		this.nemail = nemail;
	}
	public String getNpw() {
		return npw;
	}
	public void setNpw(String npw) {
		this.npw = npw;
	}
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
	public String getNtype() {
		return ntype;
	}
	public void setNtype(String ntype) {
		this.ntype = ntype;
	}
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify = verify;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "MeetMemberInfo [mm_idx=" + mm_idx + ", m_idx=" + m_idx + ", mm_level=" + mm_level + ", nidx=" + nidx
				+ ", nemail=" + nemail + ", npw=" + npw + ", nphoto=" + nphoto + ", nnic=" + nnic + ", ntype=" + ntype
				+ ", verify=" + verify + ", code=" + code + ", m_name=" + m_name + ", m_img=" + m_img + ", m_cont="
				+ m_cont + ", m_stotal=" + m_stotal + ", m_star=" + m_star + ", small_idx=" + small_idx + ", m_like="
				+ m_like + ", rd_idx=" + rd_idx + ", rd_content=" + rd_content + ", rd_date=" + rd_date + ", r_idx="
				+ r_idx + ", r_title=" + r_title + ", r_content=" + r_content + ", r_star=" + r_star + ", r_date="
				+ r_date + ", r_like=" + r_like + ", r_img=" + r_img + "]";
	}
	
}
