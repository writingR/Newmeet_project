package com.xy.nm.mm.service;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.mm.dao.MeetMemberSessionDao;

@Service("checkService")
public class MeetMemberCheckService {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private MeetMemberSessionDao dao;
	
	public boolean MemberCheck(int m_idx, int nidx) {
		
		dao = template.getMapper(MeetMemberSessionDao.class);
		
		boolean check = false;
		
		int rCnt = -1;
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("m_idx", m_idx);
		params.put("nidx", nidx);
		
		rCnt = dao.checkMember(params);
		
		if(rCnt == 1) {
			check = true;
		} else if(rCnt == 0) {
			check = false;
		}
		
		return check;
	}
	
	public int LeaderCheck(int m_idx, int nidx, int mm_level) {
		
		dao = template.getMapper(MeetMemberSessionDao.class);
		
		int rCnt = -1;
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("m_idx", m_idx);
		params.put("nidx", nidx);
		params.put("mm_level", mm_level);
		
		rCnt = dao.checkLeader(params);
		
		return rCnt;
	}
	

}
