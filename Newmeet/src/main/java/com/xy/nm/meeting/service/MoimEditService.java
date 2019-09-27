package com.xy.nm.meeting.service;


import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.meeting.dao.MeetingDao;
import com.xy.nm.meeting.domain.RequestMeetingEdit;

@Service("moimEditService")
public class MoimEditService {
		// 자동 메퍼를 이용해서 생성할 dao 
				private MeetingDao dao;
				// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
				@Autowired
				private SqlSessionTemplate template;
				
				
		public int edit(Map<String, Object> params) {
			
			dao = template.getMapper(MeetingDao.class);
			
			int cnt = dao.MoimEdit(params);
			
			return cnt;
		}
}
