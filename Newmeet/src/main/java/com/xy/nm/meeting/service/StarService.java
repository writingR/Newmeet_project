package com.xy.nm.meeting.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.meeting.dao.MeetingDao;

@Service("starService")
public class StarService {
	
	// 자동 메퍼를 이용해서 생성할 dao 
	private MeetingDao dao;
	// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
	@Autowired
	private SqlSessionTemplate template;
	
	public int Star(int m_idx,int nidx,double ms_spoint) {
		dao = template.getMapper(MeetingDao.class);
		int cnt = 0;
		int chk = 0;
		
		System.out.println(ms_spoint);
		chk = dao.StarCheckPush(m_idx, nidx);
		
		if(chk==0) {
		cnt = dao.StarPush(m_idx, nidx, ms_spoint);
			
		}else {
			return cnt;
		}
		
		return cnt;
	}
	
	
}
