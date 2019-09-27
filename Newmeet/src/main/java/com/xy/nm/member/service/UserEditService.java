package com.xy.nm.member.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.xy.nm.member.dao.MemberInterDao;
import com.xy.nm.member.domain.Member;
import com.xy.nm.member.domain.RequestMemberEdit;

@Service("userEditService")
public class UserEditService {

	@Autowired
	private SqlSessionTemplate template;
	private MemberInterDao dao;
	
	public Member getUser(int idx) {

		dao = template.getMapper(MemberInterDao.class);

		Member user = dao.selectByIdx(idx);

		return user;

	}
	
	
	//내정보 - 수정(사진)
	public Member getUser2(int idx) {

		dao = template.getMapper(MemberInterDao.class);

		Member mem = dao.selectByIdx2(idx);

		return mem;

	}
	
	
	public Member getUser(String nemail) {

		dao = template.getMapper(MemberInterDao.class);

		Member mem = dao.selectById(nemail);

		return mem;

	}
	
	//사진 수정 없음
	public int edit2(RequestMemberEdit edit,HttpServletRequest request) {

		
		// SqlSessionTemplate getMapper 를 이용해 dao 생성
		dao = template.getMapper(MemberInterDao.class);
		
		int rCnt = 0;
		Member mem = edit.toMember();

		rCnt = dao.memUpdate(mem);

		return rCnt;
	}

	
	
	public int edit(RequestMemberEdit edit, String oldFileName, HttpServletRequest request) {

		
		// SqlSessionTemplate getMapper 를 이용해 dao 생성
		dao = template.getMapper(MemberInterDao.class);
		
		int rCnt = 0;
		Member mem = edit.toMember();

		String path = "/uploadfile";
		String dir = request.getSession().getServletContext().getRealPath(path);

		// 신규 파일 체크
		if (edit.getNphoto() != null && !edit.getNphoto().isEmpty() && edit.getNphoto().getSize() > 0) {

			String newFileName = edit.getNemail() + "_" + edit.getNphoto().getOriginalFilename();

			try {
				// 신규파일 저장
				edit.getNphoto().transferTo(new File(dir, newFileName));
				// 데이터 베이스 저장을 위한 새로운 파일 이름
				mem.setNphoto(newFileName);
				// 이전 파일 삭제
				new File(dir, oldFileName).delete();

			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {
			// 신규파일이 없으면 이전 파일 이름을 그대로 업데이트
			mem.setNphoto(oldFileName);
		}

		rCnt = dao.memUpdate(mem);

		return rCnt;
	}

	
}
