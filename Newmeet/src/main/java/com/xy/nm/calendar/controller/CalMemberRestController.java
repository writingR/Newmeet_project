package com.xy.nm.calendar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.xy.nm.calendar.service.CalCreateMemberService;

@RestController
@RequestMapping("/calMember")
public class CalMemberRestController {

	
	@Autowired
	private CalCreateMemberService createMService;
	
	
	@CrossOrigin
	@PostMapping
	public ResponseEntity<String> createCalMember(int c_idx, int nidx) {
		
		int rCnt = createMService.calMemberCreate(c_idx, nidx);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
		
	}
}
