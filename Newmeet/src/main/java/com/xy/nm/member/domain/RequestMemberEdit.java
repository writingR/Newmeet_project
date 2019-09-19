package com.xy.nm.member.domain;

import org.springframework.web.multipart.MultipartFile;

public class RequestMemberEdit {
	private int nidx;
	private String nemail;
	private String npw;
	private String nnic;
	private MultipartFile nphoto;
	private String oldFile;
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
	public String getNnic() {
		return nnic;
	}
	public void setNnic(String nnic) {
		this.nnic = nnic;
	}
	public MultipartFile getNphoto() {
		return nphoto;
	}
	public void setNphoto(MultipartFile nphoto) {
		this.nphoto = nphoto;
	}
	public String getOldFile() {
		return oldFile;
	}
	public void setOldFile(String oldFile) {
		this.oldFile = oldFile;
	}
	
	@Override
	public String toString() {
		return "RequestMemberEdit [nidx=" + nidx + ", nemail=" + nemail + ", npw=" + npw + ", nnic=" + nnic
				+ ", nphoto=" + nphoto + ", oldFile=" + oldFile + "]";
	}

	public Member toMember() {
		
		Member info = new Member();
		info.setNidx(nidx);
		info.setNemail(nemail);
		info.setNpw(npw);
		info.setNnic(nnic);

		return info;
		
	}
	
	
}
