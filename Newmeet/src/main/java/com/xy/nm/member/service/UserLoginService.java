package com.xy.nm.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xy.nm.member.dao.MemberInterDao;
import com.xy.nm.member.domain.Member;

@Service("userLoginService")
public class UserLoginService {

	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;

	public int LoginUser(String nemail, String npw, HttpServletRequest request ) {

		int loginChk = 0;

		dao = template.getMapper(MemberInterDao.class);

		Member mem = null;

		mem = dao.selectById(nemail);

		System.out.println(mem.PasswordEqualNpw(npw));
		System.out.println(!npw.isEmpty());
		
		if(mem != null && mem.PasswordEqualNpw(npw)) {
			if(mem.getVerify() == 'N') {
				loginChk = 1;
			} else if(mem.getVerify() == 'Y') {
				loginChk = 2;
				HttpSession session = request.getSession(true);
				session.setAttribute("loginKey", mem.getNidx());
				System.out.println(session);
				System.out.println(session.getAttribute("loginKey"));
			}
			
		}

		return loginChk;

	}
	
	
	public int memberInfo(String nemail, String npw, HttpServletRequest request ) {

		int loginChk = 0;

		dao = template.getMapper(MemberInterDao.class);

		Member mem = null;

		mem = dao.selectById(nemail);

		System.out.println(mem.PasswordEqualNpw(npw));
		System.out.println(!npw.isEmpty());
		
		if(mem != null && mem.PasswordEqualNpw(npw)) {
			if(mem.getVerify() == 'N') {
				loginChk = 1;
			} else if(mem.getVerify() == 'Y') {
				loginChk = 2;
				HttpSession session = request.getSession(true);
				session.setAttribute("MemberIdx", mem.getNidx());
				session.setAttribute("MemberImg", mem.getNphoto());
				session.setAttribute("MemberEmail", mem.getNemail());
				session.setAttribute("MemberPw", mem.getNpw());
				session.setAttribute("MemberNic", mem.getNnic());
				
				System.out.println(session);
				/* System.out.println(session.getAttribute("loginKey")); */
			}
			
		}

		return loginChk;

	}
	
	
}
