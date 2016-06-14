package com.eteam.gstudy;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eteam.comm.MakePage;
import com.eteam.groupInfo.Group_JoinDTO;

@Service
public class Group_SubjectServiceImpl implements Group_SubjectService {

	@Inject
	Group_SubjectDAOImpl subjectDAO;
	
	
	@Override
	public int alter(Group_SubjectDTO g_sdto, int yyy, int mmm, int ddd) {
		HashMap<String, Object> al_hs=new HashMap<String, Object>();
		al_hs.put("yyy", yyy);
		al_hs.put("mmm", mmm);
		al_hs.put("ddd", ddd);
		al_hs.put("s_title", g_sdto.getS_Title());
		al_hs.put("s_contents", g_sdto.getS_Contents());
		al_hs.put("s_joinmem", g_sdto.getS_Joinmem());
		int result=0;
		try {
			result=subjectDAO.alter(al_hs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	
	@Override
	public int delete(int yyy, int mmm, int ddd) {
		HashMap<String, Integer> de_hs=new HashMap<String, Integer>();
		de_hs.put("yyy", yyy);
		de_hs.put("mmm", mmm);
		de_hs.put("ddd", ddd);
		int result=0;
		try {
			result=subjectDAO.delete(de_hs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	
	@Override
	public int record(Group_SubjectDTO g_sdto) {
		int result=0;
		try {
			result=subjectDAO.record(g_sdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return result;
	}
	
	@Override
	public List<Group_JoinDTO> search(int g_num) {
		List<Group_JoinDTO> group=subjectDAO.search(g_num);
		return group;		
	}
	
	@Override
	public List<Group_SubjectDTO> listSubject(int g_num,MakePage makePage) {
		List<Group_SubjectDTO> listSubject = null;
		HashMap<String,Integer> hs=new HashMap<String, Integer>();
		hs.put("yy", makePage.getYy());
		hs.put("mm", makePage.getMm());
		hs.put("g_num", g_num);
		
		try {
			listSubject=subjectDAO.listSubject(hs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listSubject;
	}
	
	
	
}
