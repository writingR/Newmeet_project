package com.xy.nm.member.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.member.dao.MemberInterDao;
import com.xy.nm.member.domain.Member;

@Service("userfindPwService")
public class UserFindPwService {

	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;
	@Autowired
	private MailSenderService mailSenderService;
	
	public void find_pw(HttpServletResponse response,String nemail, String npw) throws Exception {
		
		dao = template.getMapper(MemberInterDao.class);
		Member mem = null;
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 아이디가 없으면
		
		mem = dao.selectById(nemail);

		System.out.println(mem.PasswordEqualNpw(npw));
		/* System.out.println(!npw.isEmpty()); */

		if(mem.getNemail() == null ) {
			out.print("아이디가 없습니다.");
			out.close();
		} else {
			if(mem.getVerify() == 'N') {
				out.print("미인증 아이디입니다. 인증후 진행해주세요.");
				out.close();
			}else if(!mem.getNemail().equals(dao.selectById(nemail).getNemail())) {
				out.print("잘못된 이메일입니다. 확인후 진행해주세요.");
				out.close();
			}else if(mem.getVerify() == 'Y') {
				String pw = "";
				for (int i = 0; i < 12; i++) {
				npw += (char) ((Math.random() * 26) + 97);
			} 
				
			mem.setNpw(npw);	
			dao.findPw(mem);
			
			// 비밀번호 변경 메일 발송
			mailSenderService.sendPw(mem,"FindPw");
			
			
			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
				
		}
		
      }
				
	}
	
}
