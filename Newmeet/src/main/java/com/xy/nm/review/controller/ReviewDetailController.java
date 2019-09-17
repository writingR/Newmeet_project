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
public class ReviewDetailController {

		@Autowired
		ReviewService reviewService;

		@Autowired
		MeetingMemberCheckService mmCheckService;

		@RequestMapping(value = "/review/{rNum}", method = RequestMethod.GET)
		public String getReviewList(HttpServletRequest request,
				@PathVariable(value = "rNum") int rNum,
				@RequestParam(value = "mNum") int mNum,
				@RequestParam(value = "page", defaultValue = "1") int page, 
				Model model) {

			HttpSession session = request.getSession(false);

			int nidx = -1;
			
			if (session != null && session.getAttribute("MemberIdx") != null) {
				nidx = (int) session.getAttribute("MemberIdx");
			}
			
			List<Review> recentReviewList = reviewService.getRecentList(nidx, mNum);
			
//			List<ReviewComment> commentList = commentService.getCommentList();
//			
//			Review reviewDetail = reviewService.getDetail();
//			
//			int count = commentService.getCount(rNum);

//select 1개-후기 ridx로 뽑기 - 후기 테이블, 회원 테이블, 좋아요 테이블
//제목,내용,별점,대표이미지, 좋아요, 좋아요 상태
//후기 작성자 사진, 닉네임
//
//후기 idx-수정, 삭제 ( 작성자일때 )
//
//
//count 1개- 후기 ridx - 댓글 테이블- 총 개수
//
//select 1개-후기 ridx로 뽑기 - 댓글 테이블, 회원 테이블
//댓글 내용, 날짜, 작성자 사진, 작성자 닉네임,
//
//
//댓글 idx-수정, 삭제 ( 작성자일때 )
//
//select 1개 - 후기 테이블
//최근 게시글 제목, 대표이미지, 날짜, 게시글 번호
			
//			int totalCount = count / 10 + (count % 10 > 0 ? 1 : 0);
//			int endPage = totalCount < (page / 5 + 1) * 5 ? totalCount : (page / 5 + 1) * 5;
//			int startPage = 0;
//			if (page > 0 && page < 5) {
//				startPage = 1;
//			} else {
//				startPage = (page / 5 * 5 - 1);
//			}

//			model.addAttribute("totalCount", totalCount);
//			model.addAttribute("startPage", startPage);
//			model.addAttribute("endPage", endPage);
//			
//			model.addAttribute("reviewDetail", reviewDetail);
//			model.addAttribute("commentList", commentList);
			model.addAttribute("recentReviewList", recentReviewList);
//			model.addAttribute("count", count);
			model.addAttribute("moimNum", mNum);
			model.addAttribute("page", page);

			return "review/reviewDetail";
		}

	
}
