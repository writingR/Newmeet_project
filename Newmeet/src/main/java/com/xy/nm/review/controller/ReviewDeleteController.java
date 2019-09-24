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
import com.xy.nm.review.service.ReviewDeleteService;
import com.xy.nm.review.service.ReviewService;

@Controller
public class ReviewDeleteController {

	@Autowired
	MeetingMemberCheckService mmCheckService;
	
	@Autowired
	ReviewService reviewService;
	
	@Autowired
	ReviewDeleteService deleteService;
	
	@RequestMapping(value = "/review/delete/{rNum}", method = RequestMethod.GET)
	public String reviewDelete(
			HttpServletRequest request,
			@PathVariable("rNum") int rNum,
			@RequestParam(value = "mNum") int mNum,
			Model model
			) {
		
		HttpSession session =	request.getSession(false);
		int nidx = -1;
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
			if(!mmCheckService.check(nidx,mNum)) {
				model.addAttribute("errCode","1");
				return "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=2";
			}
		}
		
		Review reviewDetail = reviewService.getReviewEditInfo(rNum);
		
		//권한 확인
		//세션 아이디==rNum의 작성자
		if(nidx == reviewDetail.getNidx()) {
			
			int cnt = deleteService.delete(rNum);
			
			if(cnt>0) {
				return "redirect:/review?mNum="+mNum;
			}else {
				return "review/processFail";
			}
		}else {
			return "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=2";
		}
	
		
	}
}
