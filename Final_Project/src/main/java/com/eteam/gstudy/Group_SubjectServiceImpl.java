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
		List<Group_JoinDTO> group=subjectDAO.search(g_num);
		return group;		
	}
	
	@Override
	public List<Group_SubjectDTO> listSubject(int g_num) {
		List<Group_SubjectDTO> listSubject = null;
		try {
			listSubject=subjectDAO.listSubject(g_num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listSubject;
	}
	
}
