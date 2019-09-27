package com.xy.nm.meeting.domain;

import org.springframework.web.multipart.MultipartFile;

public class RequestMeetingWrite {
	private int small_idx;
	private String m_name;
	private MultipartFile m_img;
	private String m_cont;
	public int getSmall_idx() {
		return small_idx;
	}
	public void setSmall_idx(int small_idx) {
		this.small_idx = small_idx;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public MultipartFile getM_img() {
		return m_img;
	}
	public void setM_img(MultipartFile m_img) {
		this.m_img = m_img;
	}
	public String getM_cont() {
		return m_cont;
	}
	public void setM_cont(String m_cont) {
		this.m_cont = m_cont;
	}
	@Override
	public String toString() {
		return "RequestMeetingWrite [small_idx=" + small_idx + ", m_name=" + m_name + ", m_img=" + m_img + ", m_cont="
				+ m_cont + "]";
	}
	
	public MeetingInfo toMeetingInfo(){
		MeetingInfo info = new MeetingInfo();
		
		info.setSmall_idx(small_idx);
		info.setM_name(m_name);
		info.setM_cont(m_cont);
		
		return info;
		
	}
	
}
