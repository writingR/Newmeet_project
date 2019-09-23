package com.xy.nm.mm.service;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.mm.dao.MeetMemberSessionDao;

@Service("deleteService")
public class MeetMemberDeleteService implements MeetMemberManagerService {

	@Autowired
	private SqlSessionTemplate template;
	
	private MeetMemberSessionDao dao;
	
	public int mmDelete(int m_idx, int mm_idx) {
		
		dao = template.getMapper(MeetMemberSessionDao.class);
		
		int rCnt = 0;
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("m_idx", m_idx);
		params.put("mm_idx", mm_idx);
		
		rCnt = dao.mmDelete(params);
		
		return rCnt;
	}
}
