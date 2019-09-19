package com.xy.nm.calendar.domain;

public class CalJoinMember {

	private String nemail;
	private String nnic;
	
	public CalJoinMember() {}
	
	public CalJoinMember(String nemail, String nnic) {
		super();
		this.nemail = nemail;
		this.nnic = nnic;
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
