package com.xy.nm.calendar.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class RequestCalendar {

	
	// 유저 idx
	private int m_idx;
	// 정모 이름
	private String c_title;
	// 참가 금액
	private int c_pay;
	// 참가 인원
	private int c_count;
	// 장소명
	private String c_place;
	// 주소
	private String c_address;
	// 일정
	@DateTimeFormat(pattern = "yyyy.MM.dd"+" "+"HH:mm")
	private Date c_date;
	// 신청마감일
	@DateTimeFormat(pattern = "yyyy.MM.dd"+" "+"HH:mm")
	private Date c_edate;
	
	
	public RequestCalendar() {}
	
	
	public RequestCalendar(int m_idx, String c_title, int c_pay, int c_count, String c_place, String c_address,
			Date c_date, Date c_edate) {
		super();
		this.m_idx = m_idx;
		this.c_title = c_title;
		this.c_pay = c_pay;
		this.c_count = c_count;
		this.c_place = c_place;
		this.c_address = c_address;
		this.c_date = c_date;
		this.c_edate = c_edate;
	}


	public int getM_idx() {
		return m_idx;
	}


	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}


	public String getC_title() {
		return c_title;
	}


	public void setC_title(String c_title) {
		this.c_title = c_title;
	}


	public int getC_pay() {
		return c_pay;
	}


	public void setC_pay(int c_pay) {
		this.c_pay = c_pay;
	}


	public int getC_count() {
		return c_count;
	}


	public void setC_count(int c_count) {
		this.c_count = c_count;
	}


	public String getC_place() {
		return c_place;
	}


	public void setC_place(String c_place) {
		this.c_place = c_place;
	}


	public String getC_address() {
		return c_address;
	}


	public void setC_address(String c_address) {
		this.c_address = c_address;
	}


	public Date getC_date() {
		return c_date;
	}


	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}


	public Date getC_edate() {
		return c_edate;
	}


	public void setC_edate(Date c_edate) {
		this.c_edate = c_edate;
	}


	@Override
	public String toString() {
		return "RequestCalCreate [m_idx=" + m_idx + ", c_title=" + c_title + ", c_pay=" + c_pay + ", c_count=" + c_count
				+ ", c_place=" + c_place + ", c_address=" + c_address + ", c_date=" + c_date + ", c_edate=" + c_edate
				+ "]";
	}
	
	
	public CalendarInfo toCalendarInfo() {
		
		CalendarInfo info = new CalendarInfo();
		
		info.setM_idx(m_idx);
		info.setC_title(c_title);
		info.setC_pay(c_pay);
		info.setC_count(c_count);
		info.setC_place(c_place);
		info.setC_address(c_address);
		info.setC_date(c_date);
		info.setC_edate(c_edate);
		
		return info;
	}
	
	
}
