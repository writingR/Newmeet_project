package com.xy.nm.meeting.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.xy.nm.meeting.domain.StarDomain;
import com.xy.nm.meeting.service.StarService;
import com.xy.nm.meeting.service.StarUpdateService;

@RestController
@RequestMapping("/star")
public class StarController {
	
	@Autowired
	private StarService starService;
	@Autowired
	private StarUpdateService starUpdateService;
	
	@CrossOrigin
	@PostMapping
	public ResponseEntity<Integer>Star(
			HttpServletRequest request,
			StarDomain star
			){
		
		
		
		System.out.println(star.getMs_spoint());
		HttpSession session = request.getSession(false);
		ResponseEntity<Integer> result = null;
		int m_idx = star.getM_idx();
		double ms_spoint = star.getMs_spoint();
		if(session != null & session.getAttribute("MemberIdx") != null) {
			int nidx = (Integer)session.getAttribute("MemberIdx");
			
			
			int cnt = starService.Star(m_idx, nidx, ms_spoint);
			if(cnt==1) {
			int starCnt = starUpdateService.starUpdate(m_idx, ms_spoint);
			
			}
			
			result = new ResponseEntity<Integer>(cnt>0?1:0 , HttpStatus.OK);
		}else {
			return new ResponseEntity<Integer>(-1, HttpStatus.OK);
		}
		
		
		
		return result;
		
	}
	
}
