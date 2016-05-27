package com.eteam.room;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class RoomServiceImpl implements RoomService {

	@Inject
	RoomDAOImpl dao;
}
