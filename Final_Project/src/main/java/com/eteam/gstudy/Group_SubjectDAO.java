package com.eteam.gstudy;

import java.util.HashMap;
import java.util.List;

import com.eteam.groupInfo.Group_JoinDTO;

public interface Group_SubjectDAO {
	
	
	public int alter(HashMap<String,Object> al_hs) throws Exception;

	public int delete(HashMap<String,Integer> de_hs) throws Exception;
	
	public List<Group_JoinDTO> search(int g_num) throws Exception;
	
	public List<Group_SubjectDTO> listSubject(HashMap<String,Integer> hs) throws Exception;
	
	public int record(Group_SubjectDTO g_sdto) throws Exception;
}
