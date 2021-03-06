package com.xy.nm.member.dao;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.xy.nm.member.domain.GoogleInfo;
import com.xy.nm.member.domain.Member;

public interface MemberInterDao {
   
   // 아이디 중복 체크
   public Member selectById2(String nemail);
   // 닉네임 중복 체크
   public Member selectByNic(String nnic);
   //로그인처리시 사용
   public Member selectById(String nemail);
   
   //구글 로그인처리시 사용
   public GoogleInfo selectByGId(String nemail);
   
   public GoogleInfo selectByGIdx(int nidx);
   
   
   public Member selectByIdx(int nidx);
   
   public Member viewInfo(Member mem);
   
   public List<HashMap<String, Object>> selectList();
   //내정보
   public Member selectByIdx2(int nidx);
   
   public int insertUser(Member mem) ;
   public List<Member> selectAllList();
   
   //회원 수정
   public int memUpdate(Member mem);
   //회원 탈퇴
   public int newMeetDelete(int nidx);
   // 회원 이메일 인증 처리
   public int verify(String nemail,String code);
   
   // 비밀번호 찾기 - 비밀번호 얻기
   public int findPw(Member mem);
   
}