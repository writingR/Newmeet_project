package com.xy.nm.meeting.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.meeting.dao.MeetingDao;

@Service("moimDeleteService")
public class MoimDeleteService {
	
	// 자동 메퍼를 이용해서 생성할 dao 
	private MeetingDao dao;
	// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
	@Autowired
	private SqlSessionTemplate template;
	
	public int delete(int m_idx) {
		
		dao = template.getMapper(MeetingDao.class);
		
		int cnt = dao.MoimDelete(m_idx);
		
		return cnt;
	}
}
