package com.user.main.dao;

import java.util.List;

import com.user.main.domain.Member;

public interface MemberInterDao {

	//로그인처리시 사용
	public Member selectById(String nemail);
	public Member selectByIdx(int idx);
	public int insertUser(Member mem) ;
	public List<Member> selectAllList();
	// 회원 이메일 인증 처리
	public int verify(String nemail,String code);
	
}
