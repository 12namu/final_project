package com.eteam.message;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl implements MessageService {

	@Inject
	MessageDAOImpl dao;
	
}
