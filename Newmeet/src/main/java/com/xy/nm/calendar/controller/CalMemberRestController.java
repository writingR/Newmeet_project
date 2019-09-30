package com.xy.nm.calendar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.xy.nm.calendar.domain.CalJoinMember;
import com.xy.nm.calendar.domain.CalendarInfo;
import com.xy.nm.calendar.service.CalBanMemberService;
import com.xy.nm.calendar.service.CalCancelMemService;
import com.xy.nm.calendar.service.CalCreateMemberService;
import com.xy.nm.calendar.service.CalJoinMemChkService;
import com.xy.nm.calendar.service.CalJoinMemCountService;
import com.xy.nm.calendar.service.CalJoinMemberService;

@RestController
@RequestMapping("/calMember")
public class CalMemberRestController {

	
	@Autowired
	private CalCreateMemberService createMService;
	
	@Autowired
	private CalJoinMemberService listMService;
	
	@Autowired
	private CalBanMemberService banService;
	
	@Autowired
	private CalJoinMemCountService joinMemCountService;
	
	@Autowired
	private CalCancelMemService cancelService;
	
	@Autowired
	private CalJoinMemChkService joinChkService;
	
	
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
	
	
	@CrossOrigin
	@GetMapping("/count/{c_idx}")
	public ResponseEntity<Integer> joinCountCal(@PathVariable("c_idx") int c_idx) {
		
		System.out.println(c_idx);
		
		int rCnt = joinMemCountService.count(c_idx);
		
		System.out.println(rCnt);
		
		ResponseEntity<Integer> entity = new ResponseEntity<Integer>(rCnt, HttpStatus.OK);
		
		return entity;
	}
	
	@CrossOrigin
	@DeleteMapping("/{cm_idx}")
	public ResponseEntity<String> deleteCal(@PathVariable("cm_idx") int cm_idx) {
		System.out.println(cm_idx);
		
		int rCnt = banService.calMemDelete(cm_idx);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
	}
	
	@CrossOrigin
	@GetMapping("/{c_idx}/{nidx}")
	public ResponseEntity<String> joinChkCal(@PathVariable("c_idx") int c_idx,@PathVariable("nidx") int nidx) {
		
		int rCnt = joinChkService.calJoinChk(c_idx, nidx);
		System.out.println("참여중인 인원 : " + rCnt);
		
		return new ResponseEntity<String>(rCnt>0 ? "exist":"nexist", HttpStatus.OK);
	}
	
	@CrossOrigin
	@DeleteMapping("/{c_idx}/{nidx}")
	public ResponseEntity<String> CancelCal(@PathVariable("c_idx") int c_idx, @PathVariable("nidx") int nidx) {
		
		int rCnt = cancelService.calMemCancel(c_idx,nidx);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
	}
	
}
