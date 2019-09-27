package com.xy.nm.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.member.dao.MemberInterDao;


@Service("userVerifyService")
public class UserVerifyService {

	
	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;
	
	public int verify(String nemail,String code) {
		int rCnt = 0;
		dao = template.getMapper(MemberInterDao.class);
		rCnt = dao.verify(nemail,code);
		
		return rCnt;
	}


}
