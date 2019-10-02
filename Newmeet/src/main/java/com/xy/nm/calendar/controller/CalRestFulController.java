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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.xy.nm.calendar.domain.CalendarEdit;
import com.xy.nm.calendar.domain.CalendarInfo;
import com.xy.nm.calendar.domain.RequestCalendar;
import com.xy.nm.calendar.service.CalBtnService;
import com.xy.nm.calendar.service.CalCreateService;
import com.xy.nm.calendar.service.CalDeleteService;
import com.xy.nm.calendar.service.CalDetailService;
import com.xy.nm.calendar.service.CalEditService;
import com.xy.nm.calendar.service.CalListService;

@RestController
@RequestMapping("/cal")
public class CalRestFulController {
	
	
	@Autowired
	private CalCreateService createCalService;
	
	@Autowired
	private CalListService listCalService;
	
	@Autowired
	private CalDetailService detailCalService;
	
	@Autowired
	private CalDeleteService deleteCalService;
	
	@Autowired
	private CalEditService editCalService;
	
	@Autowired
	private CalBtnService btnCalService;
	
//	
//	@RequestMapping(method = RequestMethod.GET)
//	public String calForm() {
//		
//		return "calendar/calCreateForm";
//	}
	
	@CrossOrigin
	@PostMapping
	public ResponseEntity<String> createCal(RequestCalendar reqCal) {
		
		int rCnt = createCalService.calCreate(reqCal);
		
		System.out.println(reqCal);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
		
	}
	
	@CrossOrigin
	@GetMapping("/{m_idx}")
	public ResponseEntity<List<CalendarInfo>> getAllList(@PathVariable("m_idx") int m_idx) {
		
		List<CalendarInfo> list = listCalService.list(m_idx);
		
		
		ResponseEntity<List<CalendarInfo>> entity = new ResponseEntity<List<CalendarInfo>>(list, HttpStatus.OK);
		
		return entity;
	}
	
	@CrossOrigin
	@GetMapping("/ByIdx/{c_idx}")
	public ResponseEntity<CalendarInfo> getCalInfo(@PathVariable("c_idx") int c_idx){
		
		CalendarInfo info = detailCalService.getDetailData(c_idx);
		
		return new ResponseEntity<CalendarInfo>(info, HttpStatus.OK);
		
	}
	
	@CrossOrigin
	@DeleteMapping("/{c_idx}")
	public ResponseEntity<String> deleteCal(@PathVariable("c_idx") int c_idx) {
		
		int rCnt = deleteCalService.calDelete(c_idx);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
	}
//	
//	@CrossOrigin
//	@PutMapping("/{c_idx}")
//	public ResponseEntity<String> editCal(@PathVariable("c_idx") int c_idx, @RequestBody RequestCalendar reqCal) {
//		
//		System.out.println(reqCal);
//		
//		int rCnt = editService.calEdit(c_idx, reqCal);
//		
//		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
//	}
	
	@CrossOrigin
	@PutMapping
	public ResponseEntity<String> editCal(@RequestBody CalendarEdit editCal) {
		
		System.out.println(editCal);
		
		int rCnt = editCalService.calEdit(editCal);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
	}
	
	
	 // 모임멤버 레벨 가져오기 
	 @CrossOrigin
	 @GetMapping("/button/{m_idx}")
	 public ResponseEntity<Integer> getBtnIndex(@PathVariable("m_idx") int m_idx, int nidx){
		System.out.println(m_idx +"/" + nidx);
		 int rCnt = btnCalService.getMemLevel(m_idx, nidx);
		 
		 return new ResponseEntity<Integer>(rCnt, HttpStatus.OK);
	 }
}
