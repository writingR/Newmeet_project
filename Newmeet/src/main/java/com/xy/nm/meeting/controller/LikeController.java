package com.xy.nm.meeting.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.xy.nm.meeting.service.LikeService;
import com.xy.nm.meeting.service.LikeUpdateService;

@RestController
@RequestMapping("/like")
public class LikeController {
	
	@Autowired
	private LikeService likeService;
	@Autowired
	private LikeUpdateService likeUpdateService;
	
	@CrossOrigin
	@GetMapping("/{m_idx}")
	public ResponseEntity<Integer> like(
			HttpServletRequest request,
			@PathVariable(value = "m_idx")int m_idx){
		HttpSession session = request.getSession(false);
		
		ResponseEntity<Integer> result = null;
		
		if(session != null & session.getAttribute("MemberIdx") != null) {
			int nidx = (Integer)session.getAttribute("MemberIdx");
			System.out.println(nidx);
			
			int cnt = likeService.Like(m_idx, nidx);
			int like = likeUpdateService.likeUpate(m_idx);			
			
			result = new ResponseEntity<Integer>(cnt>0?1:0 , HttpStatus.OK);
		}else {
			return new ResponseEntity<Integer>(-1, HttpStatus.OK);
		}
		
		
		
		return result;
	}
	
	
	
	
}
