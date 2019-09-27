package com.xy.nm.meeting.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xy.nm.meeting.dao.MeetingDao;
import com.xy.nm.meeting.domain.MeetingInfo;
import com.xy.nm.meeting.domain.RequestMeetingWrite;

@Service("meetingWriteService")
public class MeetingWriteService {
	// 자동 메퍼를 이용해서 생성할 dao 
			private MeetingDao dao;
			// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
			@Autowired
			private SqlSessionTemplate template;
			
			
			public int write(HttpServletRequest request, 
					RequestMeetingWrite regist) {
				System.out.println("3  "+ regist);
				
				dao = template.getMapper(MeetingDao.class);
				
				// 서버 경로
				String path = "/uploadfile"; // 리소스 매핑 필요
				// 절대 경로 
				String dir = request.getSession().getServletContext().getRealPath(path);
				
				
				System.out.println("4  "+dir);
				
				MeetingInfo meetingInfo = regist.toMeetingInfo();
				
				int resultCnt = 0;
				
				String newFileName = "";
				
				if(regist.getM_img()!=null) {
					// 새로운 파일 이름 생성
					//String newFileName = memberInfo.getuId()+System.nanoTime();				
					newFileName = meetingInfo.getM_idx()+"_"+regist.getM_img().getOriginalFilename();
					System.out.println(newFileName);
					// 파일을 서버의 지정 경로에 저장
					try {
						regist.getM_img().transferTo(new File(dir, newFileName));
						System.out.println(newFileName);
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					// 데이터베이스 저장을 하기위한 파일 이름 set
					meetingInfo.setM_img(newFileName);
				}
				
				
				resultCnt = dao.MeetingWrite(meetingInfo);
				if(resultCnt > 0) {
					System.out.println("모임은생성됫고");
					int select = dao.SelectMidx();
					System.out.println(select);
					return select;
				}
				
				
				
				System.out.println("모임만 생성됨");
				
				return 0;
			}
			
			
			
			
}
