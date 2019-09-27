package com.xy.nm.meeting.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.meeting.dao.MeetingDao;
import com.xy.nm.meeting.domain.MeetingInfo;

@Service("moimInfoService")
public class MoimInfoService {
	// 자동 메퍼를 이용해서 생성할 dao 
	private MeetingDao dao;
	// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
	@Autowired
	private SqlSessionTemplate template;
	
	public MeetingInfo getMoimInfo(int m_idx,int nidx) {
		dao = template.getMapper(MeetingDao.class);
		
		MeetingInfo moimInfo = dao.MeetingInfo(m_idx,nidx);
		
		return moimInfo;
	}
	
	public MeetingInfo getMoimInfo2(int m_idx) {
		dao = template.getMapper(MeetingDao.class);
	
		MeetingInfo moimInfo2 = dao.MeetingInfo2(m_idx);
		
		return moimInfo2;
	}
	public MeetingInfo getMoimInfo3(int m_idx) {
		dao = template.getMapper(MeetingDao.class);
	
		MeetingInfo moimInfo3 = dao.MeetingInfo3(m_idx);
		
		return moimInfo3;
	}
	public MeetingInfo getMoimInfo4(int m_idx) {
		dao = template.getMapper(MeetingDao.class);
		
		MeetingInfo moimInfo4 = dao.MoimEditInfo(m_idx);
		
		return moimInfo4;
		
	}
	
}
