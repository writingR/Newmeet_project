package com.xy.nm.meeting.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/meeting")
public class MeetingController {
	
	@CrossOrigin
	@PostMapping("/{category}")
	public ResponseEntity<String> category(@PathVariable("category") int category,HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("category", category);
		
		return new ResponseEntity<String>("success",HttpStatus.OK);
	}
	
}
