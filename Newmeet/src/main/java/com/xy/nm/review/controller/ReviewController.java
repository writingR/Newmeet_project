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
		
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
		}
		
		List<Review> reviewList = reviewService.getList(nidx, mNum, sort, page);
		int count = reviewService.getCommentCount(mNum);
		int totalCount = count/9+(count%9>0?1:0);
		int endPage = totalCount<(page/5+1)*5?totalCount:(page/5+1)*5;
		int startPage = 0;
		if(page>0 && page<5) {
			startPage = 1;
		}else {
			startPage = (page/5*5-1);
		}
		
		//1-5 start 1
		//5-9 start 4
		//10-14 start 9
		
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		model.addAttribute("sort", sort);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("count", count);
		model.addAttribute("moimNum", mNum);
		model.addAttribute("page", page);
		
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
		
		if(session != null && session.getAttribute("MemberIdx") != null) {
			check = mmCheckService.check((int)session.getAttribute("MemberIdx"));
		}
		
		String result = "review/invalidMember";
		
		if(check) {
			result = "review/reviewWrite2";
		}
		
		model.addAttribute("mNum", mNum);
		
		return result;
	}
	
	
}
