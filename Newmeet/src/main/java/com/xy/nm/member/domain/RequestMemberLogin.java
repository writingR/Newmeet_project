package com.xy.nm.member.domain;

import org.springframework.web.multipart.MultipartFile;

public class RequestMemberLogin {

	private String nemail;
	private String npw;
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
	@Override
	public String toString() {
		return "RequestMemberLogin [nemail=" + nemail + ", npw=" + npw + "]";
	}

	
	
}
