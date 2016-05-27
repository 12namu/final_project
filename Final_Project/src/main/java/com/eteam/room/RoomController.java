package com.eteam.room;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

@Controller
public class RoomController {

	@Inject
	RoomServiceImpl serviceImpl;
	
}
