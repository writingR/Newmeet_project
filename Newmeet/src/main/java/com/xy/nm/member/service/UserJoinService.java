package com.xy.nm.member.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.xy.nm.member.dao.MemberInterDao;
import com.xy.nm.member.domain.Member;
import com.xy.nm.member.domain.RequestMemberRegist;

@Service("userJoinService")
public class UserJoinService {

	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;
	@Autowired
	private MailSenderService mailService;
	
	/*
	public int joinUser(HttpServletRequest request, 
			RequestMemberRegist regist) {
		
		
		dao = template.getMapper(MemberInterDao.class);
		// 서버 경로
		String path = "/uploadfile"; // 리소스 매핑 필요
		// 절대 경로 
		String dir = request.getSession().getServletContext().getRealPath(path);
		
		
		int resultCnt = 0;
		
		Member mem = regist.toMember();
				
		mailService.send(mem);
		  
		System.out.println("result: "+ resultCnt + "mail send ok? " +
		
		mailService.send(mem));
		
		String newFileName = "";
		
		if(regist.getNphoto()!= null) {
			// 새로운 파일 이름 생성
			//String newFileName = memberInfo.getuId()+System.nanoTime();				
			newFileName = mem.getNidx()+"_"+regist.getNphoto().getOriginalFilename();
			System.out.println(newFileName);
			// 파일을 서버의 지정 경로에 저장
			try {
				regist.getNphoto().transferTo(new File(dir, newFileName));
				System.out.println(newFileName);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// 데이터베이스 저장을 하기위한 파일 이름 set
			mem.setNphoto(newFileName);
		}
		resultCnt = dao.insertUser(mem);
		
		return resultCnt;
	}
	*/
	public int joinUser(HttpServletRequest request, 
			RequestMemberRegist regist) {
		// SqlSessionTemplate getMapper 를 이용해 dao 생성
				dao = template.getMapper(MemberInterDao.class);
				
				// 서버 경로
				String path = "/uploadfile"; // 리소스 매핑 필요
				// 절대 경로 
				String dir = request.getSession().getServletContext().getRealPath(path);
				
				Member mem = regist.toMember();
				
				

				int resultCnt = 0;
				
				String newFileName = "";
				
				MultipartFile file = regist.getNphoto();
				
				try {
					if(file != null && !file.isEmpty() && file.getSize()>0 ) {
						// 새로운 파일 이름 생성
						//String newFileName = memberInfo.getuId()+System.nanoTime();				
						newFileName = regist.getNphoto().getOriginalFilename();
						// 파일을 서버의 지정 경로에 저장
						regist.getNphoto().transferTo(new File(dir, newFileName));
						// 데이터베이스 저장을 하기위한 파일 이름 set
						mem.setNphoto(newFileName);
					} else {
						mem.setNphoto("noimage.png");
					}
					
			/* resultCnt = dao.insertUser(mem); */
					
					// 메일 발송
					mailService.send(mem);
					
					
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					System.out.println("오류");
					if(regist.getNphoto()!= null) {
						new File(dir,newFileName).delete();
					}
				}
				
				resultCnt = dao.insertUser(mem);
				
				return resultCnt;
	}
	
	
	public String idCheck(String nemail) {

		// SqlSessionTemplate getMapper 를 이용해 dao 생성
		dao = template.getMapper(MemberInterDao.class);

		String chk = dao.selectById2(nemail) == null ? "Y" : "N";

		return chk;
	}
	
	public String nicCheck(String nnic) {

		// SqlSessionTemplate getMapper 를 이용해 dao 생성
		dao = template.getMapper(MemberInterDao.class);

		String chk = dao.selectByNic(nnic) == null ? "Y" : "N";

		return chk;
	}
	
}
