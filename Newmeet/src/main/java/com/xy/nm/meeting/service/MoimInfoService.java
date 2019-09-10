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
	
	public MeetingInfo getMoimInfo(int m_idx) {
		dao = template.getMapper(MeetingDao.class);
		
		MeetingInfo moimInfo = dao.MeetingInfo(m_idx);
		
		return moimInfo;
	}
	
	
}
