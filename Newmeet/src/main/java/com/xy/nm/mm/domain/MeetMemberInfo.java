package com.xy.nm.mm.domain;

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
	
	public MeetMemberInfo() {
	
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
				+ ", verify=" + verify + ", code=" + code + "]";
	}
	
	

}
