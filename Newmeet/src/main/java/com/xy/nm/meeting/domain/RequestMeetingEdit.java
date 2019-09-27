package com.xy.nm.meeting.domain;

public class RequestMeetingEdit {
	private int m_idx;
	private int small_idx;
	private String m_name;
	private String m_cont;
	public int getSmall_idx() {
		return small_idx;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
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
	public String getM_cont() {
		return m_cont;
	}
	public void setM_cont(String m_cont) {
		this.m_cont = m_cont;
	}
	
	
	@Override
	public String toString() {
		return "RequestMeetingEdit [m_idx=" + m_idx + ", small_idx=" + small_idx + ", m_name=" + m_name + ", m_cont="
				+ m_cont + "]";
	}
	public MeetingInfo toMeetingInfo(){
		MeetingInfo info = new MeetingInfo();
		
		info.setM_idx(m_idx);
		info.setSmall_idx(small_idx);
		info.setM_name(m_name);
		info.setM_cont(m_cont);
		
		return info;
		
	}
}
