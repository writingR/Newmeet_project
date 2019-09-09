package com.user.main.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.main.dao.MemberInterDao;
import com.user.main.domain.Member;

@Service("userEditService")
public class UserEditService {

	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;
	
	public Member getUser(int idx) {

		dao = template.getMapper(MemberInterDao.class);

		Member user = dao.selectByIdx(idx);

		return user;

	}
	
	public Member getUser(String nemail) {

		dao = template.getMapper(MemberInterDao.class);

		Member user = dao.selectById(nemail);

		return user;

	}
	
}
