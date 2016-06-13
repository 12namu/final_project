package com.eteam.gstudy;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eteam.groupInfo.Group_JoinDTO;


@Repository
public class Group_SubjectDAOImpl implements Group_SubjectDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="SubjectMapper.";

	@Override
	public int delete(HashMap<String, Integer> de_hs) throws Exception {
		return sqlSession.delete(NAMESPACE+"delete", de_hs);
		
	}
	
	
	@Override
	public int record(Group_SubjectDTO g_sdto) throws Exception {
		return sqlSession.insert(NAMESPACE+"record", g_sdto);
	}
	
	@Override
	public List<Group_JoinDTO> search(int g_num) {	
		return sqlSession.selectList(NAMESPACE+"search", g_num);
	}
	
	@Override
	public List<Group_SubjectDTO> listSubject(HashMap<String,Integer> hs) throws Exception {
		return sqlSession.selectList(NAMESPACE+"listSubject", hs);
	}
	
}
