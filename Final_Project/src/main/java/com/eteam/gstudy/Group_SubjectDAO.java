package com.eteam.gstudy;

import java.util.List;

import com.eteam.groupInfo.Group_JoinDTO;

public interface Group_SubjectDAO {

	public List<Group_JoinDTO> search(int g_num) throws Exception;
	
	public List<Group_SubjectDTO> listSubject(int g_num) throws Exception;
	
	public int record(Group_SubjectDTO g_sdto) throws Exception;
}
