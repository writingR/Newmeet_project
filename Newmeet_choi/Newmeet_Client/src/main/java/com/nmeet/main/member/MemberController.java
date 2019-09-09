package com.nmeet.main.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("/Welcome")
	public String getJoinSelect() {
		
		return "member/Join";
	}
	
	@RequestMapping("/Login")
	public String getLoginSelect() {
		
		return "member/Login";
	}
	
	@RequestMapping("/List")
	public String getlist() {
		
		return "member/ListForm";
	}
	
	@RequestMapping("/JoinForm")
	public String getEmailForm() {
		
		return "member/JoinForm";
	}
	
	@RequestMapping("/LoginForm")
	public String getLoginForm() {
		
		return "member/LoginForm";
	}
	
	@RequestMapping("/Logout")
	public String getLogout() {
		
		return "member/Logout";
	}
	
	@RequestMapping("/Mypage")
	public String getMypage() {
		
		return "member/Mypage";
	}
	
}

