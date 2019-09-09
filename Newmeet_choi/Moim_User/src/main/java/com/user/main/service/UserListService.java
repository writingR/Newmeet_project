package com.user.main.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.main.dao.MemberInterDao;
import com.user.main.domain.Member;

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
