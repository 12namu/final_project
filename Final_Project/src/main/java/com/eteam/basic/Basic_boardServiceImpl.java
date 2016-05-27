package com.eteam.basic;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class Basic_boardServiceImpl implements Basic_boardService {

	@Inject
	Basic_boardDAOImpl dao;
}
