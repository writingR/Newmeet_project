package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;

@Service("banservice")
public class CalBanMemberService {

	
	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int calMemDelete(int cm_idx) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		return dao.deleteCalMember(cm_idx);
	}
}
