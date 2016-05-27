package com.eteam.message;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

@Controller
public class MessageController {

	@Inject
	MessageServiceImpl service;
}
