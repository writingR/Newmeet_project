package com.xy.nm.mm.service;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.mm.dao.MeetMemberSessionDao;
import com.xy.nm.mm.domain.MeetMemberInfo;

@Service("regService")
public class MeetMemberRegService implements MeetMemberManagerService {

	@Autowired
	private SqlSessionTemplate template;
	
	private MeetMemberSessionDao dao;
	
	public int mmInsert(HttpServletRequest request, MeetMemberInfo mmInfo) {
		
		dao = template.getMapper(MeetMemberSessionDao.class);
		
		int rCnt = 0;
		
		rCnt = dao.mmInsert(mmInfo);
		
		System.out.println(rCnt);
		
		return rCnt;
	}
}
