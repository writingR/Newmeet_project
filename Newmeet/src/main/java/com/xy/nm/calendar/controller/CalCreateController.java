package com.xy.nm.calendar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xy.nm.calendar.domain.RequestCalendar;
import com.xy.nm.calendar.service.CalCreateService;

@Controller
@RequestMapping("/cal/create")
public class CalCreateController {
	
	
	@Autowired
	private CalCreateService createService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String calForm() {
		
		return "calendar/calCreateForm";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
	public int calRegist(RequestCalendar reqCal) {
		
		int rCnt = createService.create(reqCal);
		
		System.out.println(reqCal);
		
		return rCnt;
		
		
	}
}
