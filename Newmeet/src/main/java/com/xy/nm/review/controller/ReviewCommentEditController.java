package com.xy.nm.review.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xy.nm.review.service.ReviewCommentEditService;
import com.xy.nm.review.service.ReviewCommentMemberCheckService;

@Controller
public class ReviewCommentEditController {

	@Autowired
	private ReviewCommentEditService editService;
	
	@Autowired
	private ReviewCommentMemberCheckService checkService;
	
	@RequestMapping(value =  "/review/editCommentProcess", method = RequestMethod.POST)
	public String reviewCommentEdit(
			HttpServletRequest request,
			@RequestParam(value = "content") String content,
			@RequestParam(value = "rdNum") int rdNum,
			@RequestParam(value = "rNum") int rNum,
			@RequestParam(value = "mNum") int mNum,
			Model model
			) {
		
		
		HttpSession session =	request.getSession(false);
		int nidx = -1;
		int cnt = 0;
		//후기의 작성자인지 체크
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
			cnt = checkService.checkWriter(nidx, rdNum);
			if(cnt<1) {
				return "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=2";
			}
		}else{
			return "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=1";
		}
		
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("nidx", nidx);
		params.put("rdNum", rdNum);
		params.put("content", content);

		int editCnt = editService.edit(params);
		
		String result = "review/processFail";
		
		if(editCnt>0) {
			result = "redirect:/review/"+rNum+"?mNum="+mNum;
		}
		
		return result;
	}
	
	
}
