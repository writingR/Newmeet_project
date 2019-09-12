package com.xy.nm.member.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.member.dao.MemberInterDao;
import com.xy.nm.member.domain.Member;

@Service("userListService")
public class UserListService {

	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;
	
	public List<Member> getAllList() {

		dao = template.getMapper(MemberInterDao.class);

		return dao.selectAllList();

	}
	
	
	
}
