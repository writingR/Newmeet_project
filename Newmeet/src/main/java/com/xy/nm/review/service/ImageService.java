package com.xy.nm.review.service;

import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.xy.nm.review.dao.ReviewDaoInterface;

@Service
public class ImageService {
	
	public String save(
			int nidx,
			HttpServletRequest request,
			MultipartFile file) {
		
		// 서버 경로
		String path = "/uploadfile/review"; // 리소스 매핑 필요
		// 절대 경로 
		String dir = request.getSession().getServletContext().getRealPath(path);
		
		int resultCnt = 0;
	
		String newFileName = "";
		
		try {
			
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
			file.transferTo(new File(dir, newFileName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("오류");
			new File(dir,newFileName).delete();
		}
		
		
		return newFileName;
	}
	
}
