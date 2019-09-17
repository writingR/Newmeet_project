package com.xy.nm;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xy.nm.meeting.domain.MeetingInfo;
import com.xy.nm.meeting.service.MoimInfoService;

@Controller
public class MainController {
	@Autowired
	private MoimInfoService moimInfoService;
	
	
	@RequestMapping("/main")
	public String getMain() {
		
		return "main";
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
	
}
