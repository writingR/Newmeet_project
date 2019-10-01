package com.xy.nm.calendar.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.calendar.dao.CalDaoInterface;

@Service("calBtnService")
public class CalBtnService {
	
	// 자동 메퍼를 이용해서 생성할 dao 
	private CalDaoInterface dao;
	
	// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
	@Autowired
	private SqlSessionTemplate template;
		
			
	public int getMemLevel(int m_idx,int nidx) {
		
		dao = template.getMapper(CalDaoInterface.class);
		int level = dao.getMemLevel(m_idx, nidx);
		
		return level;
	}
	
}
