package com.xy.nm.mm.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.xy.nm.mm.domain.MeetMemberInfo;
import com.xy.nm.mm.domain.MeetMemberListData;
import com.xy.nm.mm.domain.SearchParam;
import com.xy.nm.mm.service.MeetMemberDeleteService;
import com.xy.nm.mm.service.MeetMemberLevelService;
import com.xy.nm.mm.service.MeetMemberListService;
import com.xy.nm.mm.service.MeetMemberRegService;

@RestController
@RequestMapping("/meetmember")
public class MeetMemberController {

	@Autowired
	private MeetMemberListService listService;

	@Autowired
	private MeetMemberRegService regService;

	@Autowired
	private MeetMemberDeleteService deleteService;

	@Autowired
	private MeetMemberLevelService levelService;

	/*
	 * // 모임멤버의 전체 리스트 출력
	 * 
	 * @CrossOrigin
	 * 
	 * @GetMapping public ResponseEntity<List<MeetMemberInfo>> getAllList() {
	 * 
	 * List<MeetMemberInfo> list = listService.getAllList();
	 * 
	 * ResponseEntity<List<MeetMemberInfo>> entity = new
	 * ResponseEntity<List<MeetMemberInfo>>(list, HttpStatus.OK);
	 * 
	 * return entity; }
	 */

	//특정 모임의 멤버 리스트 출력
	@CrossOrigin
	@GetMapping("/{m_idx}")
	public ResponseEntity<MeetMemberListData> MeetMemberList(
			@PathVariable("m_idx") int m_idx,
			//@RequestParam(value = "m_idx") int m_idx,
			@RequestParam(value = "p", defaultValue = "1") int pageNumber
			//@RequestParam(value = "stype", required = false) String stype,
			//@RequestParam(value = "keyword", required = false) String keyword
			) {

		//SearchParam searchParam = null;

		/*
		 * if (stype != null && keyword != null && !stype.isEmpty() &&
		 * !keyword.isEmpty()) {
		 * 
		 * searchParam = new SearchParam(); searchParam.setStype(stype);
		 * searchParam.setKeyword(keyword); }
		 */

		MeetMemberListData listData = listService.getListData(m_idx, pageNumber);

		return new ResponseEntity<MeetMemberListData>(listData, HttpStatus.OK);
	}

	//모임멤버 특정 회원의 상세 리스트 출력
	@CrossOrigin
	@GetMapping("/{m_idx}/{mm_idx}")
	public ResponseEntity<MeetMemberInfo> selectByidx(
			@PathVariable("m_idx") int m_idx,
			@PathVariable("mm_idx") int mm_idx
			) {

		MeetMemberInfo list = listService.selectByidx(mm_idx);

		ResponseEntity<MeetMemberInfo> entity = new ResponseEntity<MeetMemberInfo>(list, HttpStatus.OK);

		return entity;
	}

	//모임에 참가를 눌렀을 때 모임멤버로 참가
	@CrossOrigin
	@PostMapping
	public ResponseEntity<String> mmInsert(MeetMemberInfo mmInfo, HttpServletRequest request) {

		return new ResponseEntity<String>(regService.mmInsert(request, mmInfo) > 0 ? "success" : "fail", HttpStatus.OK);
	}

	// 모임장이 특정 모임원을 강퇴 했을 때 모임멤버 테이블에서 나가게 하기
	@CrossOrigin
	@DeleteMapping("/{m_idx}/{mm_idx}")
	public ResponseEntity<String> mmDelete(
			@PathVariable("m_idx") int m_idx,
			@PathVariable("mm_idx") int mm_idx
			) {

		return new ResponseEntity<String>(deleteService.mmDelete(mm_idx) > 0 ? "success" : "fail", HttpStatus.OK);
	}

	//모임을 개설할 때 모임장으로서 level값을 '1'로 주는 것
	@CrossOrigin
	@PostMapping("/{m_idx}/{mm_idx}")
	public ResponseEntity<String> levelUp(
			@PathVariable("m_idx") int m_idx,
			@PathVariable("mm_idx") int mm_idx
			) {

		return new ResponseEntity<String>(levelService.levelUp(mm_idx) > 0 ? "success" : "fail", HttpStatus.OK);

	}

}
