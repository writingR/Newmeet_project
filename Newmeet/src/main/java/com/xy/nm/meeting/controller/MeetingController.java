package com.xy.nm.meeting.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.xy.nm.meeting.domain.MeetingInfo;
import com.xy.nm.meeting.domain.MeetingLcategory;
import com.xy.nm.meeting.domain.MeetingScategory;
import com.xy.nm.meeting.domain.RequestMeetingWrite;
import com.xy.nm.meeting.service.CategoryListService;
import com.xy.nm.meeting.service.MeetingWriteService;
import com.xy.nm.meeting.service.MoimInfoService;
import com.xy.nm.meeting.service.MoimListService;


@RestController
@RequestMapping("/meeting")
public class MeetingController {
	
	@Autowired
	private CategoryListService categoryService;
	@Autowired
	private MeetingWriteService meetingWriteService;
	@Autowired
	private MoimListService moimListService;
	@Autowired
	private MoimInfoService moimInfoService;
	
	
	
	// 대분류 리스트
	@GetMapping
	@CrossOrigin
	public ResponseEntity<List<MeetingLcategory>> getLlist(){
		
		List<MeetingLcategory> list = categoryService.getLlist();
		
		ResponseEntity<List<MeetingLcategory>> entity =
				new ResponseEntity<List<MeetingLcategory>>(
						list,
						HttpStatus.OK);
		return entity;
	}
	
	// 소분류 리스트
		@GetMapping("/{idx}")
		@CrossOrigin
		public ResponseEntity<List<MeetingScategory>> getSlist(
				@PathVariable("idx") int idx
				){
			
			List<MeetingScategory> list = categoryService.getSlist(idx);
			
			ResponseEntity<List<MeetingScategory>> entity =
					new ResponseEntity<List<MeetingScategory>>(
							list,
							HttpStatus.OK);
			return entity;
		}
	
	// 모임 생성
		@CrossOrigin
		@PostMapping
		public ResponseEntity<String> write(
				RequestMeetingWrite regRequest,
				MultipartHttpServletRequest request
				) {
			
			System.out.println("2  "+ request.getFile("m_img").getOriginalFilename());
			
			return new ResponseEntity<String>(
					meetingWriteService.write(request, regRequest)>0? "success": "fail",
					HttpStatus.OK
					);
			
		}
	
		// 모임 리스트
		@GetMapping("/list")
		@CrossOrigin
		public ResponseEntity<List<MeetingInfo>> getMoimlist(){
			
			List<MeetingInfo> list = moimListService.getList();
			
			
			
			ResponseEntity<List<MeetingInfo>> entity =
					new ResponseEntity<List<MeetingInfo>>(
							list,
							HttpStatus.OK);
			return entity;
		}
		
	
	 @GetMapping("/list/{m_idx}")
	 @CrossOrigin public ResponseEntity<MeetingInfo> getMoimInfo(
	 @PathVariable("m_idx") int m_idx) {
		 MeetingInfo moimInfo = moimInfoService.getMoimInfo3(m_idx);
	 
	 
	 return new ResponseEntity<MeetingInfo>(moimInfo, HttpStatus.OK); }
	 
		
		
}
