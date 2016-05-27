package com.eteam.gstudy;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class Study_boardServiceImpl implements Study_boardService {

	@Inject
	Study_boardDAOImpl dao;
}
