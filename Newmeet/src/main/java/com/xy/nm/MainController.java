package com.xy.nm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


	
@Controller
public class MainController {

		@RequestMapping("/main")
		public String main() {
			return "main";
		}
		
		@RequestMapping("/loginOk")
		public String loginOk() {
			return "main2";

		}
		
		@RequestMapping("/popup")
		public String popUp() {
			return "popup";

		}
		
		@RequestMapping("/Agreechk")
		public String Agreechk() {
			return "member/Agreechk";

		}
		
		@RequestMapping("/Welcome")
		public String getJoinSelect() {
			
			return "member/Join";
		}
		
		@RequestMapping("/Login")
		public String getLoginSelect() {
			
			return "member/Login";
		}
		
		@RequestMapping("/Info")
		public String getlist() {
			
			return "member/Info";
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
		
		@RequestMapping("/Modi")
		public String getModi() {
			
			return "member/Modify";
		}
		
		@RequestMapping("/Del")
		public String getDel() {
			
			return "member/Delete";
		}
		
}
