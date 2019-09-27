package com.xy.nm.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xy.nm.review.domain.Review;
import com.xy.nm.review.service.MeetingMemberCheckService;
import com.xy.nm.review.service.ReviewCommentDeleteService;
import com.xy.nm.review.service.ReviewCommentMemberCheckService;
import com.xy.nm.review.service.ReviewDeleteService;
import com.xy.nm.review.service.ReviewService;

@Controller
public class ReviewCommentDeleteController {

	@Autowired
	ReviewCommentMemberCheckService checkService;
	
	@Autowired
	ReviewCommentDeleteService deleteService;
	
	@RequestMapping(value = "/review/deleteCommentProcess/{rdNum}", method = RequestMethod.GET)
	public String reviewDelete(
			HttpServletRequest request,
			@PathVariable("rdNum") int rdNum,
			@RequestParam(value = "rNum") int rNum,
			@RequestParam(value = "mNum") int mNum,
			Model model
			) {
		
		HttpSession session =	request.getSession(false);
		int nidx = -1;
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
			if(checkService.checkWriter(nidx, rdNum) <1) {
				return "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=1";
			}
		}else {
			return "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=2";
		}
			int cnt = deleteService.delete(rdNum);
			
			if(cnt>0) {
				return "redirect:/review/"+rNum+"?mNum="+mNum;
			}else {
				return "review/processFail";
			}
		
	}
	
}
