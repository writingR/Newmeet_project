package com.xy.nm.mm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.xy.nm.mm.domain.MeetMemberInfo;
import com.xy.nm.mm.service.MeetMemberCheckService;
import com.xy.nm.mm.service.MeetMemberListService;

@Controller
public class MeetMemberController {

	@Autowired
	private MeetMemberCheckService checkService;

	@Autowired
	private MeetMemberListService listService;

	@RequestMapping(value = "/meetMember", method = RequestMethod.GET)
	public String MeetMemberList(@RequestParam(value = "m_idx") int m_idx, HttpServletRequest request, Model model) {

		int mm_level = -1;

		int anidx = -1;

		HttpSession session = request.getSession(false);

		if(session != null && session.getAttribute("MemberIdx") != null) {
			anidx = (int)session.getAttribute("MemberIdx");
		}

		MeetMemberInfo meetMemberInfo = listService.selectByidx(m_idx, anidx);

		if (meetMemberInfo != null) {
			mm_level = meetMemberInfo.getMm_level();
		}

		model.addAttribute("m_idx", m_idx);
		model.addAttribute("anidx", anidx);
		model.addAttribute("mm_level", mm_level);

		return "meetmember/meetMember";
	}

	@RequestMapping(value = "/meetMember/detail", method = RequestMethod.GET)
	public String MemberDetail(@RequestParam(value = "m_idx") int m_idx, @RequestParam(value = "bnidx") int bnidx,
			Model model) {

		model.addAttribute("m_idx", m_idx);
		model.addAttribute("bnidx", bnidx);

		return "meetmember/memberDetail";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String Detail(@RequestParam(value = "m_idx") int m_idx, Model model) {

		model.addAttribute("m_idx", m_idx);

		return "meetmember/detail";
	}

}
