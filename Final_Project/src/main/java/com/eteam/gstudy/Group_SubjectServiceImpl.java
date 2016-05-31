package com.eteam.gstudy;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eteam.groupInfo.Group_JoinDTO;

@Service
public class Group_SubjectServiceImpl implements Group_SubjectService {

	@Inject
	Group_SubjectDAOImpl subjectDAO;

	@Override
	public List<Group_JoinDTO> search(int g_num) {
		System.out.println("service 들어옴, 리스트 리턴해줌");
		List<Group_JoinDTO> group=subjectDAO.search(g_num);
		return group;		
	}
	
	
}
