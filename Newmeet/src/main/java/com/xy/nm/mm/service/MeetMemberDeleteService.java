package com.xy.nm.mm.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.mm.dao.MeetMemberSessionDao;

@Service("deleteService")
public class MeetMemberDeleteService implements MeetMemberManagerService {

	@Autowired
	private SqlSessionTemplate template;
	
	private MeetMemberSessionDao dao;
	
	public int mmDelete(int mm_idx) {
		
		dao = template.getMapper(MeetMemberSessionDao.class);
		
		int rCnt = 0;
		
		rCnt = dao.mmDelete(mm_idx);
		
		return rCnt;
	}
}
