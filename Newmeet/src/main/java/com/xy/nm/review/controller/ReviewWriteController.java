package com.xy.nm.review.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.xy.nm.review.service.ImageService;
import com.xy.nm.review.service.ReviewWriteService;


@Controller
public class ReviewWriteController {
	
	@Autowired
	private ImageService imageService;
	
	@Autowired
	private ReviewWriteService writeService;
	
	@RequestMapping(value =  "/review/writeProcess", method = RequestMethod.POST)
	public String getReviewList(
			HttpServletRequest request,
			@RequestParam(value = "mNum") int mNum,
			@RequestParam(value = "title") String title,
			@RequestParam(value = "content") String content,
			@RequestParam(value = "img", required = false, defaultValue = "") String img,
			@RequestParam(value = "star", required = false, defaultValue = "0") double star,
			Model model
			) {
		
		
		HttpSession session =	request.getSession(false);
		int nidx = -1;
		
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
		}else {
			return "review/invalidMember";
		}
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("nidx", nidx);
		params.put("mNum", mNum);
		params.put("title", title);
		params.put("content", content);
		params.put("img", img);
		params.put("star", star);

		int cnt = writeService.write(params);
		
		model.addAttribute("cnt", cnt);
		
		return "redirect:/review?mNum="+mNum;
	}
	
	
	
	@RequestMapping(value =  "/image", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> getReviewList(
			HttpServletRequest request,
			@RequestParam("file") MultipartFile file
			) {
		
		HttpSession session =	request.getSession(false);
		int nidx = 0;
		
		if(session != null && session.getAttribute("MemberIdx") != null) {
			nidx = (int)session.getAttribute("MemberIdx");
		}
		
		String url =imageService.save(nidx, request, file);

		return new ResponseEntity<String>("/nm/uploadfile/review/"+url, HttpStatus.OK);
	}
	
	
}
