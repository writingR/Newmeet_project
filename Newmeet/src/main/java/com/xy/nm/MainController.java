package com.xy.nm;

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
	public String moimInfo(@RequestParam(value = "m_idx") int m_idx, Model model) {
		
		MeetingInfo meetingInfo = moimInfoService.getMoimInfo(m_idx);
		model.addAttribute("m_name", meetingInfo.getM_name());
		model.addAttribute("m_img", meetingInfo.getM_img());
		model.addAttribute("m_cont", meetingInfo.getM_cont());
		model.addAttribute("m_star", meetingInfo.getM_star());
		model.addAttribute("m_like", meetingInfo.getM_like());
		model.addAttribute("small_idx", meetingInfo.getSmall_idx());
		
		return "meeting/moimInfo";
		
	}
	
}
