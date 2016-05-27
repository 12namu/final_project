package com.eteam.pe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/subject/*")
public class SubjectController {

	@RequestMapping("/list")
	public void list(){
		
	}
}
