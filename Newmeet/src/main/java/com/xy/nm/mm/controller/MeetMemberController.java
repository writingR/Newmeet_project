package com.xy.nm.mm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MeetMemberController {

	@RequestMapping(value = "/meetMember", method = RequestMethod.GET)
	public String MeetMemberList(	
			@RequestParam(value = "m_idx") int m_idx,
			HttpServletRequest request,
			Model model
			) {
		
		HttpSession session = request.getSession(false);
		
		int nidx = -1;
		
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
		}
		
		model.addAttribute("m_idx", m_idx);
		model.addAttribute("nidx", nidx);
		
		return "meetmember/meetMember";
	}
	
	@RequestMapping(value = "/meetMember/detail", method = RequestMethod.GET)
	public String MemberDetail(
			@RequestParam(value = "m_idx") int m_idx,
			@RequestParam(value = "nidx") int nidx,
			Model model
			) {
		
		model.addAttribute("nidx", nidx);
		model.addAttribute("m_idx", m_idx);
		
		return "meetmember/memberDetail";
	}
	
	
}
