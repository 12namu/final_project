package com.eteam.gstudy;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

@Controller
public class GstudyController {

	@Inject
	Study_boardServiceImpl service;
}
