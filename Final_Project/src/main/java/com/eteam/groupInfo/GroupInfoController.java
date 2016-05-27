package com.eteam.groupInfo;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

@Controller
public class GroupInfoController {

	@Inject
	Group_infoServiceImpl service;
}
