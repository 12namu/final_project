package com.eteam.gboard;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

@Controller
public class GboardController {

	@Inject
	Group_boardServiceImpl service;
}
