package com.xy.nm.meeting.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.meeting.dao.MeetingDao;

@Service("likeService")
public class LikeService {
		// 자동 메퍼를 이용해서 생성할 dao 
		private MeetingDao dao;
		// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
		@Autowired
		private SqlSessionTemplate template;

		public int Like(int m_idx,int nidx) {
			dao = template.getMapper(MeetingDao.class);
			int cnt = 0;
			
			
			int likeCnt = dao.LikeCheck(m_idx, nidx);
		
			if(likeCnt>0) {
				int likeStat = dao.LikeCheckPush(m_idx, nidx);
				if(likeStat>0) {
					cnt = dao.Likedown(m_idx, nidx);
				}else {
					cnt = dao.Like(m_idx, nidx);
				}
				
			}else {
				cnt = dao.LikePush(m_idx, nidx);
			}
			
			
			
			
			return cnt;
		}
		
		
}
