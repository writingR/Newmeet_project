package com.xy.nm.mm.controller;



import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.xy.nm.mm.domain.MeetMemberInfo;
import com.xy.nm.mm.domain.MeetMemberListData;
import com.xy.nm.mm.service.MeetMemberCheckService;
import com.xy.nm.mm.service.MeetMemberDeleteService;
import com.xy.nm.mm.service.MeetMemberLevelService;
import com.xy.nm.mm.service.MeetMemberListService;
import com.xy.nm.mm.service.MeetMemberRegService;

@RestController
@RequestMapping("/meetmember")
public class RestMeetMemberController {

	@Autowired
	private MeetMemberListService listService;

	@Autowired
	private MeetMemberRegService regService;

	@Autowired
	private MeetMemberDeleteService deleteService;

	@Autowired
	private MeetMemberLevelService levelService;
	
	@Autowired
	private MeetMemberCheckService checkService;
	
	// 특정 모임의 멤버 리스트 출력
	@CrossOrigin
	@GetMapping("/{m_idx}")
	public ResponseEntity<MeetMemberListData> MeetMemberList(@PathVariable("m_idx") int m_idx,
			@RequestParam(value = "p", defaultValue = "1") int pageNumber) {

		MeetMemberListData listData = listService.getListData(m_idx, pageNumber);

		return new ResponseEntity<MeetMemberListData>(listData, HttpStatus.OK);
	}

	// 특정 모임의 특정 유저가 작성한 리뷰 리스트 출력
	@CrossOrigin
	@GetMapping("/review/{m_idx}/{nidx}")
	public ResponseEntity<MeetMemberListData> MemberReviewList(@PathVariable("m_idx") int m_idx,
			@PathVariable("nidx") int nidx, @RequestParam(value = "p", defaultValue = "1") int pageNumber) {
		
		boolean check = checkService.MemberCheck(m_idx, nidx);
		
		MeetMemberListData listData = new MeetMemberListData();
		
		if(check) {
			listData = listService.selectReviewList(m_idx, nidx, pageNumber);
		}
		
		return new ResponseEntity<MeetMemberListData>(listData, HttpStatus.OK);

	}

	// 특정 모임의 특정 유저가 작성한 리뷰 댓글 리스트 출력
	@CrossOrigin
	@GetMapping("/comment/{m_idx}/{nidx}")
	public ResponseEntity<MeetMemberListData> MemberCommentList(@PathVariable("m_idx") int m_idx,
			@PathVariable("nidx") int nidx, @RequestParam(value = "p", defaultValue = "1") int pageNumber) {

		boolean check = checkService.MemberCheck(m_idx, nidx);
		
		MeetMemberListData listData = new MeetMemberListData();
		
		if(check) {
			listData = listService.selectRcommentList(m_idx, nidx, pageNumber);
		} 
	
		return new ResponseEntity<MeetMemberListData>(listData, HttpStatus.OK);

	}

	// 특정 모임의 특정 유저가 가입한 모든 모임의 리스트 출력
	@CrossOrigin
	@GetMapping("/meeting/{m_idx}/{nidx}")
	public ResponseEntity<MeetMemberListData> MemberMeetingList(@PathVariable("m_idx") int m_idx,
			@PathVariable("nidx") int nidx, @RequestParam(value = "p", defaultValue = "1") int pageNumber) {
		
		boolean check = checkService.MemberCheck(m_idx, nidx);
		
		MeetMemberListData listData = new MeetMemberListData();
		
		if(check) {
			listData = listService.selectMeetingList(m_idx, nidx, pageNumber);
		} 
		
		return new ResponseEntity<MeetMemberListData>(listData, HttpStatus.OK);
	}

	// 모임멤버 특정 회원의 상세 리스트 출력
	@CrossOrigin
	@GetMapping("/{m_idx}/{nidx}")
	public ResponseEntity<MeetMemberInfo> selectByidx(@PathVariable("m_idx") int m_idx,
			@PathVariable("nidx") int nidx) {

		MeetMemberInfo list = listService.selectByidx(m_idx, nidx);

		ResponseEntity<MeetMemberInfo> entity = new ResponseEntity<MeetMemberInfo>(list, HttpStatus.OK);

		return entity;
	}

	// 모임에 참가를 눌렀을 때 모임멤버로 참가
	@CrossOrigin
	@PostMapping
	public ResponseEntity<String> mmInsert(MeetMemberInfo mmInfo, HttpServletRequest request) {

		return new ResponseEntity<String>(regService.mmInsert(request, mmInfo) > 0 ? "success" : "fail", HttpStatus.OK);
	}

	// 모임장이 특정 모임원을 강퇴 했을 때 모임멤버 테이블에서 나가게 하기
	@CrossOrigin
	@DeleteMapping("/{m_idx}/{mm_idx}")
	public ResponseEntity<String> mmDelete(@PathVariable("m_idx") int m_idx, @PathVariable("mm_idx") int mm_idx) {

		return new ResponseEntity<String>(deleteService.mmDelete(m_idx, mm_idx) > 0 ? "success" : "fail",
				HttpStatus.OK);
	}

	// 모임을 개설할 때 모임장으로서 level값을 '1'로 주는 것
	@CrossOrigin
	@PostMapping("/{m_idx}/{mm_idx}")
	public ResponseEntity<String> levelUp(@PathVariable("m_idx") int m_idx, @PathVariable("mm_idx") int mm_idx) {

		return new ResponseEntity<String>(levelService.levelUp(mm_idx) > 0 ? "success" : "fail", HttpStatus.OK);

	}

}
