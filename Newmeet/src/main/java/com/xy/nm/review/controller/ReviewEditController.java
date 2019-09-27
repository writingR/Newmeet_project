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

import com.xy.nm.review.service.ReviewEditService;
import com.xy.nm.review.service.ReviewWriteService;

@Controller
public class ReviewEditController {
	
	@Autowired
	private ReviewWriteService writeService;
	
	@Autowired
	private ReviewEditService editService;
	
	@RequestMapping(value =  "/review/editProcess", method = RequestMethod.POST)
	public String reviewEdit(
			HttpServletRequest request,
			@RequestParam(value = "mNum") int mNum,
			@RequestParam(value = "title") String title,
			@RequestParam(value = "content") String content,
			@RequestParam(value = "img", required = false, defaultValue = "") String img,
			@RequestParam(value = "star", required = false, defaultValue = "0") double star,
			@RequestParam(value = "rNum") int rNum,
			Model model
			) {
		
		
		HttpSession session =	request.getSession(false);
		int nidx = -1;
		int checkMMember = 0;
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
			checkMMember = writeService.checkMMember(nidx,mNum);
			if(checkMMember<1) {
				return "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=2";
			}
		}else{
			return "redirect:/review/"+rNum+"?mNum="+mNum+"&errCode=2";
		}
		
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("nidx", nidx);
		params.put("rNum", rNum);
		params.put("title", title);
		params.put("content", content);
		params.put("img", img);
		params.put("star", star);

		int cnt = editService.edit(params);
		
		return "redirect:/review?mNum="+mNum;
	}
	
	
}
