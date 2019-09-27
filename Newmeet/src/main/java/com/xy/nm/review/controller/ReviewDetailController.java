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

import com.xy.nm.review.domain.Comment;
import com.xy.nm.review.domain.Review;
import com.xy.nm.review.service.MeetingMemberCheckService;
import com.xy.nm.review.service.ReviewCommentService;
import com.xy.nm.review.service.ReviewService;
@Controller
public class ReviewDetailController {

		@Autowired
		ReviewService reviewService;

		@Autowired
		MeetingMemberCheckService mmCheckService;
		
		@Autowired
		ReviewCommentService commentService;

		@RequestMapping(value = "/review/{rNum}", method = RequestMethod.GET)
		public String getReviewList(HttpServletRequest request,
				@PathVariable(value = "rNum") int rNum,
				@RequestParam(value = "mNum") int mNum,
				@RequestParam(value = "page", defaultValue = "1") int page, 
				@RequestParam(value = "errCode", defaultValue = "0") int errCode,
				Model model) {
			
			HttpSession session = request.getSession(false);

			int nidx = -1;
			
			if (session != null && session.getAttribute("MemberIdx") != null) {
				nidx = (int) session.getAttribute("MemberIdx");
			}
			
			List<Review> recentReviewList = reviewService.getRecentList(mNum);
			
			Review reviewDetail = reviewService.getReviewDetail(nidx, rNum, mNum);
						
			int count = commentService.getCommentCount(rNum);
			
			List<Comment> commentList = commentService.getCommentList(rNum, page);
	
			
			int totalCount = count / 10 + (count % 10 > 0 ? 1 : 0);
			int endPage = totalCount < (page / 5 + 1) * 5 ? totalCount : (page / 5 + 1) * 5;
			int startPage = 0;
			if (page > 0 && page < 5) {
				startPage = 1;
			} else {
				startPage = (page / 5 * 5 - 1);
			}
			
			model.addAttribute("totalCount", totalCount);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("errCode", errCode);
			
			model.addAttribute("reviewDetail", reviewDetail);
			model.addAttribute("commentList", commentList);
			model.addAttribute("recentReviewList", recentReviewList);
			model.addAttribute("count", count);
			model.addAttribute("moimNum", mNum);
			model.addAttribute("rNum", rNum);
			model.addAttribute("page", page);

			return "review/reviewDetail2";
		}

	
}
