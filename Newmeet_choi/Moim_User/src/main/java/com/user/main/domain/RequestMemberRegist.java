package com.user.main.domain;

import org.springframework.web.multipart.MultipartFile;

public class RequestMemberRegist {

	private String nemail;
	private String npw;
	private MultipartFile nphoto;
	private String ntype;
	
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
	public MultipartFile getNphoto() {
		return nphoto;
	}
	public void setNphoto(MultipartFile nphoto) {
		this.nphoto = nphoto;
	}
	public String getNtype() {
		return ntype;
	}
	public void setNtype(String ntype) {
		this.ntype = ntype;
	}
	@Override
	public String toString() {
		return "RequestMemberRegist [nemail=" + nemail + ", npw=" + npw + ", nphoto=" + nphoto + ", ntype=" + ntype
				+ "]";
	}
	
	public Member toMember() {
		
		Member info = new Member();
		info.setNemail(nemail);
		info.setNpw(npw);
		info.setNtype(ntype);
		
		return info;
		
	}
	
}
