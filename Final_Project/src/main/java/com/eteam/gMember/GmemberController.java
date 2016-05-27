package com.eteam.gMember;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

@Controller
public class GmemberController {

	@Inject
	Group_joinServiceImpl service;
	
}
