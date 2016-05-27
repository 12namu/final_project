package com.eteam.gboard;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class Group_boardServiceImpl implements Group_boardService {

	@Inject
	Group_boardDAOImpl dao;
}
