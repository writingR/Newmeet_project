package com.xy.nm.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.xy.nm.review.service.ReviewLikeService;

@RestController
public class ReviewLikeController {
	
	@Autowired
	private ReviewLikeService likeService;
	
	@CrossOrigin
	@RequestMapping(value =  "/review/like", method = RequestMethod.GET)
	public ResponseEntity<Integer> reviewWrite(
			HttpServletRequest request,
			@RequestParam(value = "rIdx") int r_idx
			) {
		
		HttpSession session =	request.getSession(false);
				
		ResponseEntity<Integer> result = null;
		
		
		if(session != null && session.getAttribute("MemberIdx") != null) {
			int cnt = likeService.likeCheck((int)session.getAttribute("MemberIdx"), r_idx);
			result = new ResponseEntity<Integer>(cnt>0?1:0 , HttpStatus.OK);
		}else {
			return new ResponseEntity<Integer>(-1 , HttpStatus.OK); //로그인 안됬음
		}
		
		return result;
	}
}
