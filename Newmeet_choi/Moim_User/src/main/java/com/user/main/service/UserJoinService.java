package com.user.main.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.user.main.dao.MemberInterDao;
import com.user.main.domain.Member;
import com.user.main.domain.RequestMemberRegist;

@Service("userJoinService")
public class UserJoinService {

	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;
	@Autowired
	private MailSenderService mailService;
	
	public int joinUser(
			RequestMemberRegist regist
			) {

		dao = template.getMapper(MemberInterDao.class);

		int result = 0;

		Member mem = regist.toMember();


		result = dao.insertUser(mem);
		mailService.send(mem);

		System.out.println("result: "+ result + "mail send ok? " + mailService.send(mem));

		return result;

	}


	
}
