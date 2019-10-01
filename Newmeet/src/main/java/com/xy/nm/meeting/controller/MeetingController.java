package com.xy.nm.meeting.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.xy.nm.meeting.domain.MeetingInfo;
import com.xy.nm.meeting.domain.MeetingLcategory;
import com.xy.nm.meeting.domain.MeetingScategory;
import com.xy.nm.meeting.domain.RequestMeetingEdit;
import com.xy.nm.meeting.domain.RequestMeetingWrite;
import com.xy.nm.meeting.service.CategoryListService;
import com.xy.nm.meeting.service.Image_Service;
import com.xy.nm.meeting.service.MeetingWriteService;
import com.xy.nm.meeting.service.MoimDeleteService;
import com.xy.nm.meeting.service.MoimEditService;
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
	@Autowired
	private Image_Service image_Service;
	@Autowired
	private MoimDeleteService moimDeleteService;
	@Autowired
	private MoimEditService moimEditService;
	
	
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
		
	
		
	// 모임 수정
		@CrossOrigin
		@PostMapping("/{m_idx}")
		public ResponseEntity<Integer> edit(
				RequestMeetingEdit regRequest,
				@PathVariable("m_idx")int m_idx
				) {
			
			System.out.println("수정중 1");
			System.out.println(regRequest.getM_name());
			MeetingInfo meetingInfo = regRequest.toMeetingInfo();
			System.out.println(meetingInfo);
			Map<String, Object> params = new HashMap<String, Object>();
			
			params.put("m_idx", meetingInfo.getM_idx());
			params.put("m_name", meetingInfo.getM_name());
			params.put("small_idx", meetingInfo.getSmall_idx());
			params.put("m_cont", meetingInfo.getM_cont());
	
			
			//request.getFile("m_img").getSize()
			int resultCnt = moimEditService.edit(params);
			
			return new ResponseEntity<Integer>(
					resultCnt >0? 1 : 0,
					HttpStatus.OK
					);
		}
	// 모임 생성
		@CrossOrigin
		@PostMapping
		public ResponseEntity<Integer> write(
				RequestMeetingWrite regRequest,
				MultipartHttpServletRequest request
				) {
			System.out.println(regRequest.getM_name());
			System.out.println("2123  "+ request.getFile("m_img").getOriginalFilename());
			
			
			int m_idx = meetingWriteService.write(request, regRequest);
			
			
			return new ResponseEntity<Integer>(
					m_idx >0? m_idx : 0,
					HttpStatus.OK
					);
			
		}
		
		// 대표 이미지 수정
		@CrossOrigin
		@RequestMapping(value = "/image", method = RequestMethod.POST,produces = "application/json")
		public ResponseEntity<Integer> image(@RequestParam("m_idx")int m_idx,
				HttpServletRequest request,
				@RequestParam("m_img")MultipartFile m_img){
			
			int cnt = 0;
			System.out.println(m_idx);
			System.out.println(m_img);
			cnt = image_Service.image(m_idx, request, m_img);
			System.out.println("변경완료 캬캬캬"+cnt);
			return new ResponseEntity<Integer>(
					cnt>0?1:0,
					HttpStatus.OK
					);
			
			
		}
		
	// 서머노트 사진
		@CrossOrigin
		@RequestMapping(value = "/photo", method = RequestMethod.POST,produces =  "application/text; charset=utf8")
		public ResponseEntity<String> summernote(
				HttpServletRequest request,
				@RequestParam("file") MultipartFile file
				) {
			
			HttpSession session =	request.getSession(false);
			int nidx = 0;
			
			if(session != null && session.getAttribute("MemberIdx") != null) {
				nidx = (int)session.getAttribute("MemberIdx");
			}
			
			String url = image_Service.summernote(nidx, request, file);
			
			
			return new ResponseEntity<String>(
					"/nm/uploadfile/"+url,
					HttpStatus.OK
					);
		
		}
		// 메인 페이지 좋아요 리스트
		@GetMapping("/mainlist")
		@CrossOrigin
		public ResponseEntity<List<MeetingInfo>> getmainlist(){
			
			List<MeetingInfo> list = moimListService.getMain();
			
			
			
			ResponseEntity<List<MeetingInfo>> entity =
					new ResponseEntity<List<MeetingInfo>>(
							list,
							HttpStatus.OK);
			return entity;
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
		
	// 모임 삭제	
	 @CrossOrigin
	 @DeleteMapping("/{m_idx}")
	 public ResponseEntity<Integer> moimDelete(
			 @PathVariable("m_idx") int m_idx){
		 
		 return new ResponseEntity<Integer>(
					moimDeleteService.delete(m_idx)>0?1:0,
					HttpStatus.OK
					);
		 
	 }
	 
	
	 
}
