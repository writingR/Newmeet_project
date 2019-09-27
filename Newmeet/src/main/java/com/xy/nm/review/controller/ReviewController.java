package com.xy.nm.review.controller;

import java.util.List;

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
			@RequestParam(value = "errCode", defaultValue = "0") int errCode,
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
		
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("errCode", errCode);
		
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
			check = mmCheckService.check((int)session.getAttribute("MemberIdx"),mNum);
		}
		
		String result =  "redirect:/review?mNum="+mNum+"&errCode=2";
		
		if(check) {
			result = "review/reviewWrite2";
		}
		
		model.addAttribute("mNum", mNum);
		
		return result;
	}
	
	@RequestMapping(value =  "/review/edit/{rNum}", method = RequestMethod.GET)
	public String reviewEdit(
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
				return  "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=2";
			}
		}
		
		Review reviewDetail = reviewService.getReviewEditInfo(rNum);
		
		//권한 확인
		//세션 아이디==rNum의 작성자
		if(nidx == reviewDetail.getNidx()) {
			model.addAttribute("reviewDetail",reviewDetail);
			model.addAttribute("mNum",mNum);
			model.addAttribute("rNum",rNum);
			return "review/reviewEdit";
		}else {
			return  "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=1";
		}
		
		
	}
	
	
	
	
}
