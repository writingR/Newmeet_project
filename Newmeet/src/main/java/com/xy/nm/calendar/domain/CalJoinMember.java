package com.xy.nm.calendar.domain;

public class CalJoinMember {

	
	private int cm_idx;
	private String nemail;
	private String nnic;
	
	
	
	public CalJoinMember() {}
	
	public CalJoinMember(int cm_idx, String nemail, String nnic) {
		super();
		this.cm_idx = cm_idx;
		this.nemail = nemail;
		this.nnic = nnic;
	}
	
	
	public int getCm_idx() {
		return cm_idx;
	}

	public void setCm_idx(int cm_idx) {
		this.cm_idx = cm_idx;
	}

	public String getNemail() {
		return nemail;
	}
	public void setNemail(String nemail) {
		this.nemail = nemail;
	}
	public String getNnic() {
		return nnic;
	}
	public void setNnic(String nnic) {
		this.nnic = nnic;
	}

	@Override
	public String toString() {
		return "CalJoinMember [nemail=" + nemail + ", nnic=" + nnic + "]";
	}
	
	
}
