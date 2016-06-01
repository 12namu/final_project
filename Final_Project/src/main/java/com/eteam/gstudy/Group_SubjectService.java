package com.eteam.gstudy;

import java.util.List;

import com.eteam.groupInfo.Group_JoinDTO;

public interface Group_SubjectService {
		
	public List<Group_JoinDTO> search(int g_num);
	
	public List<Group_SubjectDTO> listSubject(int g_num);
}
