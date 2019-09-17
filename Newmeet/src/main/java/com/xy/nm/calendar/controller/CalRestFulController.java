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

import com.xy.nm.calendar.domain.CalendarInfo;
import com.xy.nm.calendar.domain.RequestCalendar;
import com.xy.nm.calendar.service.CalCreateService;
import com.xy.nm.calendar.service.CalDeleteService;
import com.xy.nm.calendar.service.CalDetailService;
import com.xy.nm.calendar.service.CalEditService;
import com.xy.nm.calendar.service.CalListService;

@RestController
@RequestMapping("/cal")
public class CalRestFulController {
	
	
	@Autowired
	private CalCreateService createService;
	
	@Autowired
	private CalListService listService;
	
	@Autowired
	private CalDetailService detailService;
	
	@Autowired
	private CalDeleteService deleteService;
	
	@Autowired
	private CalEditService editService;
	
//	
//	@RequestMapping(method = RequestMethod.GET)
//	public String calForm() {
//		
//		return "calendar/calCreateForm";
//	}
	
	@CrossOrigin
	@PostMapping
	public ResponseEntity<String> createCal(RequestCalendar reqCal) {
		
		int rCnt = createService.calCreate(reqCal);
		
		System.out.println(reqCal);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
		
	}
	
	@CrossOrigin
	@GetMapping
	public ResponseEntity<List<CalendarInfo>> getAllList() {
		
		List<CalendarInfo> list = listService.list();
		
		ResponseEntity<List<CalendarInfo>> entity = new ResponseEntity<List<CalendarInfo>>(list, HttpStatus.OK);
		
		return entity;
	}
	
	@CrossOrigin
	@GetMapping("/{c_idx}")
	public ResponseEntity<CalendarInfo> getCalInfo(@PathVariable("c_idx") int c_idx){
		
		CalendarInfo info = detailService.getDetailData(c_idx);
		
		return new ResponseEntity<CalendarInfo>(info, HttpStatus.OK);
		
	}
	
	@CrossOrigin
	@DeleteMapping("/{c_idx}")
	public ResponseEntity<String> deleteCal(@PathVariable("c_idx") int c_idx) {
		
		int rCnt = deleteService.calDelete(c_idx);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
	}
	
	@CrossOrigin
	@PutMapping("/{c_idx}")
	public ResponseEntity<String> editCal(@PathVariable("c_idx") int c_idx, @RequestBody RequestCalendar reqCal) {
		
		System.out.println(reqCal);
		
		int rCnt = editService.calEdit(c_idx, reqCal);
		
		return new ResponseEntity<String>(rCnt>0 ? "success":"fail", HttpStatus.OK);
	}
	
}
