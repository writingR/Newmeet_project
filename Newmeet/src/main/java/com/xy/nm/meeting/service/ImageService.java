package com.xy.nm.meeting.service;

import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.xy.nm.meeting.dao.MeetingDao;

@Service("imageService")
public class ImageService {
	// 자동 메퍼를 이용해서 생성할 dao 
				private MeetingDao dao;
				// 자동 메퍼를 위한 sqlSessionTemplate 객체 주입
				@Autowired
				private SqlSessionTemplate template;
	
	public int image(int m_idx,HttpServletRequest request,MultipartFile m_img) {
		
		dao = template.getMapper(MeetingDao.class);
		// 서버 경로
				String path = "/uploadfile"; // 리소스 매핑 필요
				// 절대 경로 
				String dir = request.getSession().getServletContext().getRealPath(path);
				int cnt = 0;
				
				String newFileName = "";
				
				Random r = new Random(System.nanoTime());
				StringBuffer sb = new StringBuffer();
				
				for(int i=0 ; i<20 ; i++ ) {
					if(r.nextBoolean()) {
						sb.append(r.nextInt(10));
					} else {
						sb.append((char)(r.nextInt(26)+97));
					}
				}
				
				newFileName = sb.toString()+"_"+m_idx+"_"+m_img.getOriginalFilename();
				// 파일을 서버의 지정 경로에 저장
				try {
					m_img.transferTo(new File(dir, newFileName));
					cnt = 1; 
					
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}catch (Exception e) {
					System.out.println("오류");
					new File(dir,newFileName).delete();
					
				}
				
				if(cnt > 0) {
				int	resultCnt = dao.ImageEdit(m_idx, newFileName);
				System.out.println("이미지 변경 완료"+resultCnt);
				return resultCnt;
				}
				System.out.println("변경 실패");
				return cnt;
		
	}
		
	public String summernote(
			int nidx,
			HttpServletRequest request,
			MultipartFile file
			) {
		// 서버 경로
		String path = "/uploadfile"; // 리소스 매핑 필요
		// 절대 경로 
		String dir = request.getSession().getServletContext().getRealPath(path);
		
		
		String newFileName = "";
		
		Random r = new Random(System.nanoTime());
		StringBuffer sb = new StringBuffer();
		
		for(int i=0 ; i<20 ; i++ ) {
			if(r.nextBoolean()) {
				sb.append(r.nextInt(10));
			} else {
				sb.append((char)(r.nextInt(26)+97));
			}
		}
		
		newFileName = sb.toString()+"_"+nidx+"_"+file.getOriginalFilename();
		// 파일을 서버의 지정 경로에 저장
		try {
			file.transferTo(new File(dir, newFileName));
			
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (Exception e) {
			System.out.println("오류");
			new File(dir,newFileName).delete();
			
		}
		
		return newFileName;
		
	}
	
	
}
