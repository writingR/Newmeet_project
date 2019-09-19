package com.xy.nm.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.member.dao.MemberInterDao;
import com.xy.nm.member.domain.Member;

@Service("userInfoService")
public class UserInfoService {

	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;
	
	public Member getInfo (Member member) {
		dao = template.getMapper(MemberInterDao.class);
		
		Member mem = dao.viewInfo(member);
		
		return mem;
		
	}
	
	
}
