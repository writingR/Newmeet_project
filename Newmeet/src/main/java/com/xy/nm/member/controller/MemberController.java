package com.xy.nm.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.xy.nm.member.dao.MemberInterDao;
import com.xy.nm.member.domain.GoogleInfo;
import com.xy.nm.member.domain.Member;
import com.xy.nm.member.domain.RequestMemberEdit;
import com.xy.nm.member.domain.RequestMemberLogin;
import com.xy.nm.member.domain.RequestMemberRegist;
import com.xy.nm.member.service.MailSenderService;
import com.xy.nm.member.service.UserDeleteService;
import com.xy.nm.member.service.UserEditService;
import com.xy.nm.member.service.UserFindPwService;
import com.xy.nm.member.service.UserInfoService;
import com.xy.nm.member.service.UserJoinService;
import com.xy.nm.member.service.UserListService;
import com.xy.nm.member.service.UserLoginService;
import com.xy.nm.member.service.UserVerifyService;

@RestController
@RequestMapping
public class MemberController {

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
   @Autowired
   private UserDeleteService userDeleteService;
   @Autowired
   private UserInfoService userInfoService;
   @Autowired
   private UserFindPwService userfindPwService;
   
   
   private MemberInterDao dao;
   @Autowired
   private SqlSessionTemplate template;
   
   // 전체리스트 출력
   @CrossOrigin
   @GetMapping
   public ResponseEntity<List<Member>> getAllList() {

      return new ResponseEntity<List<Member>>(userListService.getAllList(), HttpStatus.OK);

   }
   
   @CrossOrigin
   @PostMapping("/regist")
   public ResponseEntity<String> getJoin(RequestMemberRegist regist, MultipartHttpServletRequest request) {

      /*
       * System.out.println("check"+ request.getFile("nphoto").getOriginalFilename());
       * 
       * return new ResponseEntity<String>( userJoinService.joinUser(request,
       * regist)>0? "success": "fail", HttpStatus.OK );
       */

      System.out.println("check : " + regist);

      System.out.println("파일확인 : " + regist.getNphoto().getOriginalFilename());

      int cnt = userJoinService.joinUser(request, regist);

      return new ResponseEntity<String>(cnt > 0 ? "success" : "fail", HttpStatus.OK);

   }

   // User 정보확인
   @CrossOrigin
   @GetMapping("/user/{nidx}")
   public ResponseEntity<Member> getUser(@PathVariable("nidx") int nidx) {

      Member user = userEditService.getUser(nidx);

      return new ResponseEntity<Member>(user, HttpStatus.OK);

   }

   
    // User 정보수정
     
    @CrossOrigin
    @PostMapping("/edit/{nidx}") 
    public ResponseEntity<String> getUser(
    RequestMemberEdit edit, HttpServletRequest request ) throws Exception {
    
    /*edit.setNidx(nidx);*/
     
    int cnt = userEditService.edit2(edit, request);
     
     return new ResponseEntity<String>(cnt > 0 ? "success" : "fail",
     HttpStatus.OK);
     
     }
     

   // 인증메일 발송
   @CrossOrigin
   @RequestMapping("/verify")
   public String verify(@RequestParam("nemail") String nemail, @RequestParam("code") String code) {
      String result = userVerifyService.verify(nemail, code) > 0 ? "OK" : "NO";
      return "인증확인 ---->" + result;

   }
   
   // 내정보
   @RequestMapping(value ="/Info", method= RequestMethod.GET)
   public ModelAndView getInfo(Member mem, HttpServletRequest request, Model model) {
      
      System.out.println(mem.toString());
      HttpSession session = request.getSession();
      
      
      mem.setNidx((int)session.getAttribute("MemberIdx"));
      Member memberInfo = userInfoService.getInfo(mem);
      model.addAttribute("MemberInfo", memberInfo);
      
      return new ModelAndView("member/Info");
      
   }
   
   
   // 정보수정 - 프로필사진
     @RequestMapping(value ="/Editprofile")
     public String editPhoto(
    		 @RequestParam("nidx") int nidx,
    		 Model model
    		 ) {
    	 
      Member mem = userEditService.getUser2(nidx);
      model.addAttribute("editMem", mem);
    	 
       return "member/Info";
    	 
     }
     
     @RequestMapping(method = RequestMethod.POST)
 	public String edit(RequestMemberEdit edit,
 			HttpServletRequest request
 			) {
 		
 		System.out.println("수정 :::::::" + edit);
 		System.out.println("수정 이전 파일 : " + edit.getOldFile());
 		
 		int rCnt = 0;
 		rCnt = userEditService.edit(edit, edit.getOldFile(), request);
 		System.out.println(rCnt);
 		
 		return "redirect:/member/Info2";
 		
 	}
   
   
   // 마이페이지
      @RequestMapping(value ="/Mypage", method= RequestMethod.GET)
      public ModelAndView getMypage(Member mem, HttpServletRequest request, Model model) {
         
         System.out.println(mem.toString());
         HttpSession session = request.getSession();
         
         mem.setNidx((int)session.getAttribute("MemberIdx"));
         Member memberInfo = userInfoService.getInfo(mem);
         model.addAttribute("MemberInfo", memberInfo);
         
         return new ModelAndView("member/Mypage");
         
   }
   
   
   // 프로필사진
   @RequestMapping(value ="/main1", method= RequestMethod.GET)
   public ModelAndView getProfile(Member mem, HttpServletRequest request, Model model) {
         
         System.out.println(mem.toString());
         HttpSession session = request.getSession();
         
         mem.setNidx((int)session.getAttribute("MemberIdx"));
         Member memberInfo = userInfoService.getInfo(mem);
         model.addAttribute("MemberInfo", memberInfo);
         
         return new ModelAndView("main");
         
   }
   
   
   // 프로필관리
      @RequestMapping(value ="/Modi", method= RequestMethod.GET)
      public ModelAndView getModify(Member mem, HttpServletRequest request, Model model) {
            
            System.out.println(mem.toString());
            HttpSession session = request.getSession();
            
            mem.setNidx((int)session.getAttribute("MemberIdx"));
            Member memberInfo = userInfoService.getInfo(mem);
            model.addAttribute("MemberInfo", memberInfo);
            
            return new ModelAndView("member/Modify");
            
   }
   
   
   
   // 로그인
   @CrossOrigin
   @PostMapping(value = "/login")
   public ResponseEntity<String> loginUser(@RequestBody RequestMemberLogin member, HttpServletRequest request) {

      String LoginResult = "";
      String nemail = member.getNemail();
      String npw = member.getNpw();

      int loginChk = userLoginService.memberInfo(nemail, npw, request);

      switch (loginChk) {

      // 0 - 오류
      // 1 - 미인증회원
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
   

	/*
	 * // 로그아웃
	 * 
	 * @CrossOrigin
	 * 
	 * @GetMapping("/logout") public ResponseEntity<String> logoutUser(HttpSession
	 * session) {
	 * 
	 * session.invalidate(); return new ResponseEntity<String>("GooDBye!",
	 * HttpStatus.OK);
	 * 
	 * }
	 */
   
   
   // 아이디 중복체크
   @RequestMapping("/idCheck")
   @ResponseBody
   public String idCheck(@RequestParam("nemail") String nemail) {

      return userJoinService.idCheck(nemail);
   }

   // 닉네임 중복체크
   @RequestMapping("/nicCheck")
   @ResponseBody
   public String nicCheck(@RequestParam("nnic") String nnic) {

      return userJoinService.nicCheck(nnic);
   }
   
   // 비밀번호 찾기 폼
   @RequestMapping(value = "/FindPw")
   public ModelAndView find_pw_form() throws Exception{
      return new ModelAndView("FindPw");
   }
   
   
	/*
	 * // 이용약관
	 * 
	 * @RequestMapping("/Agree")
	 * 
	 * @ResponseBody public String idCheck(@RequestParam("nemail") String nemail) {
	 * 
	 * return userJoinService.idCheck(nemail); }
	 */
   
   
   
   @RequestMapping(value = "/FindPwOK")
   public void findPwOK(@ModelAttribute Member mem,
         @RequestParam(value = "nemail",required=false) String nemail,
         @RequestParam(value = "npw",required=false) String npw,
         HttpServletResponse response) throws Exception{
      userfindPwService.find_pw(response, nemail, npw);
   }
   
   @PostMapping(value = "/GoogleSociallogin")
   public ResponseEntity<String> loginSocialOk(@RequestBody GoogleInfo mem, HttpServletRequest request) {

      
      System.out.println("일로왔음");
      
      String LoginResult = "";
      String nemail = mem.getNemail();
      String ntype = mem.getNtype();
      String nnic = mem.getNnic();

      //int loginChk = userLoginService.memberInfo(nemail, npw, request);
      int loginChk = userLoginService.googleInfo(nemail, nnic,ntype, request);

      switch (loginChk) {

      // 0 - 오류
      // 1 - 미인증회원
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
   
      System.out.println("일로왔음2");
      HttpSession session = request.getSession();
      return new ResponseEntity<String>(LoginResult, HttpStatus.OK);

   }
   
   
   
   
   
   
   //로그아웃
   @RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		
		session.invalidate();
		
		return new ModelAndView("main");
	}

   // 회원탈퇴
   @CrossOrigin
   @DeleteMapping("/{nidx}")
   public ResponseEntity<String> newMeetOut(@PathVariable("nidx") int nidx) {

      return new ResponseEntity<String>(userDeleteService.newMeetOut(nidx) > 0 ? "SUCCESS" : "FAIL", HttpStatus.OK);
   }

}