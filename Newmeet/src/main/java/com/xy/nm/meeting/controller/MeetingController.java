package com.xy.nm.meeting.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.xy.nm.meeting.service.MoimMemberService;


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
	@Autowired
	private MoimMemberService moimMemberService;
	
	
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
		public ResponseEntity<Integer> write(
				RequestMeetingWrite regRequest,
				MultipartHttpServletRequest request
				) {
			
			System.out.println("2  "+ request.getFile("m_img").getOriginalFilename());
			int m_idx = meetingWriteService.write(request, regRequest);
			
			
			return new ResponseEntity<Integer>(
					m_idx >0? m_idx : 0,
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
	 @CrossOrigin 
	 public ResponseEntity<MeetingInfo> getMoimInfo(
	 @PathVariable("m_idx") int m_idx) {
		 MeetingInfo moimInfo = moimInfoService.getMoimInfo3(m_idx);
	 
	 
	 return new ResponseEntity<MeetingInfo>(moimInfo, HttpStatus.OK); }
	 
	 
	 // 버튼 
	 @GetMapping("/button/{m_idx}")
	 @CrossOrigin
	 public ResponseEntity<Integer> getButton(
			 @PathVariable("m_idx") int m_idx,
			 HttpServletRequest request
			 ){
		 HttpSession session = request.getSession(false);
		 ResponseEntity<Integer> result = null;
		 int member = 0;
		 int cnt = 0;
		 if(session != null & session.getAttribute("MemberIdx") != null) {
			 int nidx = (Integer)session.getAttribute("MemberIdx");
			 
			 member = moimMemberService.moimMember(m_idx, nidx);
			 // 0보다 크면 회원 아니면 비회원
			 if(member>0) {
				 
				  cnt = moimMemberService.moimJang(m_idx, nidx);
				 
				 result = new ResponseEntity<Integer>(cnt>0?2:1 , HttpStatus.OK);
				 
			 }else {
				 return new ResponseEntity<Integer>(0, HttpStatus.OK);
			 }
			
		 }else {
			 return new ResponseEntity<Integer>(-1, HttpStatus.OK);
		 }
		 
		 
		
		 
		return result;
	 }
		
		
}
