package com.eteam.gstudy;

import java.util.List;

import com.eteam.comm.MakePage;
import com.eteam.groupInfo.Group_JoinDTO;

public interface Group_SubjectService {
	
	public int delete(int yyy, int mmm, int ddd);
		
	public List<Group_JoinDTO> search(int g_num);
	
	public List<Group_SubjectDTO> listSubject(int g_num,MakePage makePage);
	
	public int record(Group_SubjectDTO g_sdto);
}
