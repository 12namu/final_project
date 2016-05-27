package com.eteam.member;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

@Controller
public class MemberController {

	@Inject
	MemberServiceImpl service;
}
