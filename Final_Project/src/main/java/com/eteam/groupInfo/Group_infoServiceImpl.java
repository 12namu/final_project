package com.eteam.groupInfo;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class Group_infoServiceImpl implements Group_infoService {

	@Inject
	Group_infoDAOImpl dao;
}
