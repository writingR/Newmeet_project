package com.xy.nm.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xy.nm.review.domain.Review;
import com.xy.nm.review.service.MeetingMemberCheckService;
import com.xy.nm.review.service.ReviewService;


@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
	@Autowired
	MeetingMemberCheckService mmCheckService;
	
	@RequestMapping(value =  "/review", method = RequestMethod.GET)
	public String getReviewList(
			HttpServletRequest request,
			@RequestParam(value = "sort", defaultValue = "1") int sort,
			@RequestParam(value = "mNum") int mNum,
			@RequestParam(value = "page", defaultValue = "1") int page,
			Model model
			) {
		
		HttpSession session =	request.getSession(false);
		
		int nidx = -1;
		
		if(session != null && session.getAttribute("loginKey") != null) {
			nidx = (int)session.getAttribute("loginKey");
		}
		
		List<Review> reviewList = reviewService.getList(nidx, mNum, sort, page);
		int count = reviewService.getCommentCount(mNum);
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("count", count);
		model.addAttribute("moimNum", mNum);
		
		return "review/reviewList2";
	}
	
	
	@RequestMapping(value =  "/review/write", method = RequestMethod.GET)
	public String reviewWrite(
			HttpServletRequest request,
			@RequestParam(value = "mNum") int mNum,
			Model model
			) {
		
		HttpSession session =	request.getSession(false);
				
		boolean check = false;
		
		if(session != null && session.getAttribute("loginKey") != null) {
			check = mmCheckService.check((int)session.getAttribute("loginKey"));
		}
		
		String result = "review/invalidMember";
		
		if(check) {
			result = "review/reviewWrite";
		}
		
		model.addAttribute("mNum", mNum);
		
		return result;
	}
	
	
}
