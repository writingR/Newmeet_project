package com.xy.nm;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xy.nm.meeting.domain.CategoryList;
import com.xy.nm.meeting.domain.MeetingInfo;
import com.xy.nm.meeting.service.MoimInfoService;
import com.xy.nm.meeting.service.MoimListService;
import com.xy.nm.meeting.service.MoimSearchService;


	
@Controller
public class MainController {
		@Autowired
		private MoimInfoService moimInfoService;
		@Autowired
		private MoimSearchService moimSearchService;
		@Autowired
		private MoimListService moimListService;
	

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
		
		
		
		
		@RequestMapping("/newMoim")
		public String getMoim() {
			return "meeting/newMoim";
		}
		
		@RequestMapping("/newMoim2")
		public String getMoim2() {
			return "meeting/newMoim2";
		}
		
		@RequestMapping("/newMoim3")
		public String getMoim3() {
			return "meeting/newMoim3";
		}
		
		@RequestMapping("/newMoim4")
		public String getMoim4() {
			return "meeting/newMoim4";
		}
		
		@RequestMapping("/moimList")
		public String getMoimList() {
			return "meeting/moimList";
		}
		
		@RequestMapping("/moimedit")
		public String moimedit(@RequestParam(value = "m_idx") int m_idx,
				HttpServletRequest request, Model model) {
			if(request.getSession().getAttribute("MemberIdx")!=null) {
				int nidx = (Integer)request.getSession().getAttribute("MemberIdx");
				System.out.println(nidx);
				System.out.println(m_idx);
				MeetingInfo meetingInfo = moimInfoService.getMoimInfo4(m_idx);
				System.out.println(meetingInfo);
				if(meetingInfo!=null) {
					
					model.addAttribute("m_name", meetingInfo.getM_name());
					model.addAttribute("m_img", meetingInfo.getM_img());
					model.addAttribute("m_cont", meetingInfo.getM_cont());
					model.addAttribute("m_star", meetingInfo.getM_star());
					model.addAttribute("m_like", meetingInfo.getM_like());
					model.addAttribute("small_idx", meetingInfo.getSmall_idx());
					model.addAttribute("m_stotal", meetingInfo.getM_stotal());
					model.addAttribute("m_idx", meetingInfo.getM_idx());
					
					return "meeting/moimedit";
			}
		}
			return "로그인 안댐";
		}
		
		
		@RequestMapping("/moimInfo")
		public String moimInfo(@RequestParam(value = "m_idx") int m_idx,HttpServletRequest request, Model model) {
			
			if(request.getSession().getAttribute("MemberIdx")!=null) {
			int nidx = (Integer)request.getSession().getAttribute("MemberIdx");
			MeetingInfo meetingInfo = moimInfoService.getMoimInfo(m_idx,nidx);
			
			if(meetingInfo!=null) {
				
				model.addAttribute("m_name", meetingInfo.getM_name());
				model.addAttribute("m_img", meetingInfo.getM_img());
				model.addAttribute("m_cont", meetingInfo.getM_cont());
				model.addAttribute("m_star", meetingInfo.getM_star());
				model.addAttribute("m_like", meetingInfo.getM_like());
				model.addAttribute("small_idx", meetingInfo.getSmall_idx());
				model.addAttribute("m_stotal", meetingInfo.getM_stotal());
				model.addAttribute("m_idx", meetingInfo.getM_idx());
				model.addAttribute("nidx", meetingInfo.getNidx());
				model.addAttribute("l_like", meetingInfo.getL_like());
				
				return "meeting/moimInfo";
			}else {
			
				
				MeetingInfo meetingInfo2 = moimInfoService.getMoimInfo2(m_idx);
				meetingInfo2.setNidx(nidx);
				model.addAttribute("m_name", meetingInfo2.getM_name());
				model.addAttribute("m_img", meetingInfo2.getM_img());
				model.addAttribute("m_cont", meetingInfo2.getM_cont());
				model.addAttribute("m_star", meetingInfo2.getM_star());
				model.addAttribute("m_like", meetingInfo2.getM_like());
				model.addAttribute("small_idx", meetingInfo2.getSmall_idx());
				model.addAttribute("m_stotal", meetingInfo2.getM_stotal());
				model.addAttribute("m_idx", meetingInfo2.getM_idx());
				model.addAttribute("nidx", meetingInfo2.getNidx());
				model.addAttribute("l_like", meetingInfo2.getL_like());
				
				return "meeting/moimInfoNot";
			}
			}else {
				MeetingInfo meetingInfo2 = moimInfoService.getMoimInfo2(m_idx);
				
				model.addAttribute("m_name", meetingInfo2.getM_name());
				model.addAttribute("m_img", meetingInfo2.getM_img());
				model.addAttribute("m_cont", meetingInfo2.getM_cont());
				model.addAttribute("m_star", meetingInfo2.getM_star());
				model.addAttribute("m_like", meetingInfo2.getM_like());
				model.addAttribute("small_idx", meetingInfo2.getSmall_idx());
				model.addAttribute("m_stotal", meetingInfo2.getM_stotal());
				model.addAttribute("m_idx", meetingInfo2.getM_idx());
				model.addAttribute("l_like", meetingInfo2.getL_like());
				
				return "meeting/moimInfoNot";
			}
		}
		
		// 검색 기능
		
		@RequestMapping("/moimSearch")
		public String moim(@RequestParam(value = "Keyword") String Keyword,Model model) {
			
			List<MeetingInfo> info = moimSearchService.search(Keyword);
			
			model.addAttribute("AllList", info);
			
			/*
			 * for(int i = 0; i<info.size(); i++) { MeetingInfo meet = new MeetingInfo();
			 * 
			 * meet.setM_name(info.get(i).getM_name());
			 * meet.setM_img(info.get(i).getM_img());
			 * meet.setM_cont(info.get(i).getM_cont());
			 * meet.setM_like(info.get(i).getM_like());
			 * meet.setM_star(info.get(i).getM_star());
			 * meet.setM_stotal(info.get(i).getM_stotal());
			 * meet.setSmall_idx(info.get(i).getSmall_idx());
			 * 
			 * model.addAttribute("list["+i+"]", meet);
			 * 
			 * }
			 */
			
			System.out.println(info);
			
			return "meeting/moimSearch";
		}
		
		// 카테고리별 검색
		
		@RequestMapping("/category")
		public String category(@RequestParam(value = "category") String category,Model model) {
			
			List<CategoryList> info = moimListService.getCategory(category);
			
			model.addAttribute("AllList", info);
			
			
			System.out.println(info);
			
			return "meeting/moimSearch";
		}
		
		
		// 좋아요 별점 순 검색
		
		@RequestMapping("/likestar")
		public String likestar(@RequestParam(value = "likestar") int likestar,Model model) {
			String likestarlist = "";
			System.out.println(likestar);
			if(likestar == 1) {
				likestarlist = "m_like";
			}
			if(likestar == 2) {
				likestarlist = "m_stotal/m_star";
			}
			System.out.println(likestarlist);
			
			List<MeetingInfo> info = moimListService.getLikeStar(likestarlist);
			
			model.addAttribute("AllList", info);
			
			
			System.out.println(info);
			
			return "meeting/LikeStarList";
		}
		
		
		
		
		
}
