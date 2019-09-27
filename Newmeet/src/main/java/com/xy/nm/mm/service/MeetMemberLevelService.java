package com.xy.nm.mm.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.mm.dao.MeetMemberSessionDao;

@Service("levelService")
public class MeetMemberLevelService {

	@Autowired
	private SqlSessionTemplate template;
	
	private MeetMemberSessionDao dao;
	
	public int levelUp(int mm_idx) {
		
		dao = template.getMapper(MeetMemberSessionDao.class);
		
		int rCnt = 0;
		
		rCnt = dao.levelUp(mm_idx);
		
		return rCnt;
	}
	
}
