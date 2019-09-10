package com.xy.nm.meeting.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xy.nm.meeting.dao.MeetingDao;
import com.xy.nm.meeting.domain.MeetingLcategory;
import com.xy.nm.meeting.domain.MeetingScategory;



@Service("categoryService")
public class CategoryListService {
	// 자동 메퍼를 이용해서 생성할 dao 
			private MeetingDao dao;
			// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
			@Autowired
			private SqlSessionTemplate template;
			
			
			public List<MeetingLcategory> getLlist() {
				
				dao = template.getMapper(MeetingDao.class);
				
				List<MeetingLcategory> lcategory = dao.lCategoryList();
				
				
				return lcategory;
			}
			
			public List<MeetingScategory> getSlist(int big_idx) {
				
				dao = template.getMapper(MeetingDao.class);
				
				List<MeetingScategory> scategory = dao.sCategoryList(big_idx);
				
				
				return scategory;
			}
			

}
