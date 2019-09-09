package com.user.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.user.main.domain.Member;
import com.user.main.domain.RequestMemberLogin;
import com.user.main.domain.RequestMemberRegist;
import com.user.main.service.MailSenderService;
import com.user.main.service.UserEditService;
import com.user.main.service.UserJoinService;
import com.user.main.service.UserListService;
import com.user.main.service.UserLoginService;
import com.user.main.service.UserVerifyService;

@RestController
@RequestMapping("/mem")
public class Rest_UserController {
	
	@Autowired
	private UserJoinService userJoinService;
	@Autowired
	private UserEditService userEditService;
	@Autowired
	private UserListService userListService;
	@Autowired
	private UserLoginService userLoginService;	
	@Autowired
	private MailSenderService mailSenderService;
	@Autowired
	private UserVerifyService userVerifyService;

	
	// 전체 리스트출력
	@CrossOrigin
	@GetMapping
	public ResponseEntity<List<Member>> getAllList() {

		return new ResponseEntity<List<Member>>(userListService.getAllList(), HttpStatus.OK);

	}

	// 회원가입
	@CrossOrigin
	@PostMapping(value ="/regist")
	public ResponseEntity<String> getJoin(
			RequestMemberRegist regist
			) {

		System.out.println("check : " + regist);
		
		int result = userJoinService.joinUser(regist);

		return new ResponseEntity<String>(result>0?"success":"fail", HttpStatus.OK);
	}

	// User 정보 가져오기
	@CrossOrigin
	@GetMapping("/{idx}")
	public ResponseEntity<Member> getUser(@PathVariable("idx") int idx) {

		Member user = userEditService.getUser(idx);

		return new ResponseEntity<Member>(user, HttpStatus.OK);

	}
	
	// 이메일 인증
	@CrossOrigin
	@RequestMapping("/verify")
	public String verify(@RequestParam("nemail")String nemail,@RequestParam("code")String code) {
		String result = userVerifyService.verify(nemail, code)>0?"OK":"NO";
		return "verify" + result;

	}

	// 로그인
	@CrossOrigin
	@PostMapping(value = "/login")
	public ResponseEntity<String> loginUser(
			@RequestBody RequestMemberLogin member,
			HttpServletRequest request) {
		
		String LoginResult = "";
		String nemail = member.getNemail();
		String npw = member.getNpw();

		int loginChk = userLoginService.LoginUser(nemail, npw, request);

		switch (loginChk) {

		// 0 - 오류
		// 1 - 이메일 미인증
		// 2 - 인증완료 !!
		case 0:
			LoginResult = "fail";
			break;
		case 1:
			LoginResult = "yet";
			break;
		case 2:

			int nidx = userEditService.getUser(nemail).getNidx();

			LoginResult = String.valueOf(nidx);

			System.out.println("LoginResult : " + loginChk);

			break;

		}
		HttpSession session = request.getSession();
		return new ResponseEntity<String>(LoginResult, HttpStatus.OK);
		
	}
	
	//로그아웃
	@CrossOrigin
	@GetMapping("/logout")
	public ResponseEntity<String> logoutUser(HttpSession session){

		session.invalidate();
		return new ResponseEntity<String>("GooDBye!",HttpStatus.OK);

	}
	
	
}
