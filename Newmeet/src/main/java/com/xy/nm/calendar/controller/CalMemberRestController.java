package com.xy.nm.calendar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.xy.nm.calendar.domain.CalJoinMember;
import com.xy.nm.calendar.domain.CalendarInfo;
import com.xy.nm.calendar.service.CalCreateMemberService;
import com.xy.nm.calendar.service.CalJoinMemberService;

@RestController
@RequestMapping("/calMember")
public class CalMemberRestController {

	
	@Autowired
	private CalCreateMemberService createMService;
	
	@Autowired
	private CalJoinMemberService listMService;
	
	
	@CrossOrigin
	@PostMapping
	public ResponseEntity<String> createCalMember(int c_idx, int nidx) {
		
		int rCnt = createMService.calMemberCreate(c_idx, nidx);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
		
	}
	
	@CrossOrigin
	@GetMapping("/{c_idx}")
	public ResponseEntity<List<CalJoinMember>> getAllList(@PathVariable("c_idx") int c_idx) {
		
		List<CalJoinMember> list = listMService.list(c_idx);
		
		
		ResponseEntity<List<CalJoinMember>> entity = new ResponseEntity<List<CalJoinMember>>(list, HttpStatus.OK);
		
		return entity;
	}
	
	
}
