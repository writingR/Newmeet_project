package com.xy.nm.meeting.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.meeting.dao.MeetingDao;

@Service("moimMemberService")
public class MoimMemberService {
	
			// 자동 메퍼를 이용해서 생성할 dao 
			private MeetingDao dao;
			// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
			@Autowired
			private SqlSessionTemplate template;
		
			
	public int moimMember(int m_idx,int nidx) {
		
		dao = template.getMapper(MeetingDao.class);
		int member = dao.MoimMember(m_idx, nidx);
		
		return member;
	}
	
	public int moimJang(int m_idx,int nidx) {
		
		dao = template.getMapper(MeetingDao.class);
		int jang = dao.MoimJang(m_idx, nidx);
		
		return jang;
		
	}
	
	
	
}
