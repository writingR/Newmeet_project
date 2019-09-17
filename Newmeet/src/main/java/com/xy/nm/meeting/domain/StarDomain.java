package com.xy.nm.meeting.domain;

public class StarDomain {
	
	private int m_idx;
	private double ms_spoint;
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public double getMs_spoint() {
		return ms_spoint;
	}
	public void setMs_spoint(double ms_spoint) {
		this.ms_spoint = ms_spoint;
	}
	@Override
	public String toString() {
		return "Star [m_idx=" + m_idx + ", ms_spoint=" + ms_spoint + "]";
	}
	
	
	
}
