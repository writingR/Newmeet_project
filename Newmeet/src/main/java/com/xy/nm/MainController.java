package com.xy.nm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/main")
	public String getMain() {
		
		return "main";
	}
	
	@RequestMapping("/newMoim")
	public String getMoim() {
		return "meeting/newMoim";
	}
	
}
