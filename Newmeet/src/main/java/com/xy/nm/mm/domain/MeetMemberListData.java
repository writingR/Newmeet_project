package com.xy.nm.mm.domain;

import java.util.List;

public class MeetMemberListData {

	private List<MeetMemberInfo> mmList;
	private int totalCount;
	private int no;
	private int currentPageNumber;
	private int pageTotalCount;
	
	public MeetMemberListData() {
	
	}
	public List<MeetMemberInfo> getMmList() {
		return mmList;
	}
	public void setMmList(List<MeetMemberInfo> mmList) {
		this.mmList = mmList;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCurrentPageNumber() {
		return currentPageNumber;
	}
	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}
	public int getPageTotalCount() {
		return pageTotalCount;
	}
	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}
	
	
	
	
	
}
