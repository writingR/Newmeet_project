package com.xy.nm.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.member.dao.MemberInterDao;

@Service("userDeleteService")
public class UserDeleteService {

	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;
	
	public int newMeetOut(int nidx) {
		
		// SqlSessionTemplate getMapper 를 이용해 dao 생성
		dao = template.getMapper(MemberInterDao.class);
		
		return dao.newMeetDelete(nidx);
	}
	
}
