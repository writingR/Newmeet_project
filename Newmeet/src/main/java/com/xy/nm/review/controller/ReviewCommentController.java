package com.xy.nm.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xy.nm.review.dao.ReviewDaoInterface;
import com.xy.nm.review.domain.Comment;
import com.xy.nm.review.service.CommentWriteService;
import com.xy.nm.review.service.ImageService;
import com.xy.nm.review.service.MeetingMemberCheckService;
import com.xy.nm.review.service.ReviewWriteService;

@Controller
public class ReviewCommentController {

	@Autowired
	MeetingMemberCheckService mmCheckService;
	
	@Autowired
	private CommentWriteService commentService;
	
	@RequestMapping(value =  "/review/writeCommentProcess", method = RequestMethod.POST)
	public String commentWrite(
			HttpServletRequest request,
			@RequestParam(value = "rNum") int rNum,
			@RequestParam(value = "mNum") int mNum,
			@RequestParam(value = "content") String content,
			Model model
			) {
		
		
		
		HttpSession session =	request.getSession(false);
		
		boolean check = false;
		int nidx = -1;
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
			check = mmCheckService.check(nidx,mNum);
		}
		
		String result = "redirect:/review/"+rNum+"?mNum="+mNum;
		
		if(check) {
			
			Map<String, Object> params = new HashMap<String, Object>();
			
			params.put("nidx", nidx);
			params.put("r_idx", rNum);
			params.put("content", content);


			int cnt = commentService.write(params);
			
			if(cnt<1) {
				result = "review/processFail";
			}
			
		}else {
			result = "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=2";
		}
		
		return result;
	}
}
