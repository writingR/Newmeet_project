package com.xy.nm.calendar.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;
import com.xy.nm.calendar.domain.CalJoinMember;
import com.xy.nm.calendar.domain.CalendarInfo;

@Service("listMservice")
public class CalJoinMemberService {

	
	private CalDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<CalJoinMember> list(int c_idx) {
		
		dao = template.getMapper(CalDaoInterface.class);
		
		List<CalJoinMember> list = new ArrayList<CalJoinMember>();
		
		list = dao.joinCalMember(c_idx);
		
		return list;
	}
}
