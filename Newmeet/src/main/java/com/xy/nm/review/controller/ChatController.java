package com.xy.nm.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xy.nm.review.service.ReviewWriteService;
import com.xy.nm.review.service.SelectMemberService;

@Controller
public class ChatController {
	
	@Autowired
	private ReviewWriteService writeService;
	
	@Autowired
	private SelectMemberService selectMemberService;
	
	@RequestMapping(value =  "/chat/{mNum}", method = RequestMethod.GET)
	public String enterChattingRoo(
			HttpServletRequest request,
			@PathVariable(value = "mNum") int mNum,
			Model model
			) {
		
		HttpSession session =	request.getSession(false);
		
		int nidx = -1;
		int checkMMember = 0;
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
			checkMMember = writeService.checkMMember(nidx,mNum);
			if(checkMMember<1) {
				return "review/invalidMember";
			}else {
				model.addAttribute("nnic", selectMemberService.select(nidx));
			}
		}else{
			return "review/notLogin";
		}
		
		model.addAttribute("mNum",mNum);
		return "review/meetingChat";
	}
	
}
