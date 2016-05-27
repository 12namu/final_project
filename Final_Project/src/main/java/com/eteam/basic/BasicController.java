package com.eteam.basic;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;



@Controller
public class BasicController {

	@Inject
	Basic_boardServiceImpl service;
	
}
