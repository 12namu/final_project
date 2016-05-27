package com.eteam.gMember;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class Group_joinServiceImpl implements Group_joinService {

	@Inject
	Group_joinDAOImpl dao;
}
