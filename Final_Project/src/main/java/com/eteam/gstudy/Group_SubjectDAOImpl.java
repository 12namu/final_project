package com.eteam.gstudy;

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
	public List<Group_JoinDTO> search(int g_num) {	
		return sqlSession.selectList(NAMESPACE+"search", g_num);
	}
	
	@Override
	public List<Group_SubjectDTO> listSubject(int g_num) throws Exception {
		return sqlSession.selectList(NAMESPACE+"listSubject", g_num);
	}
	
}
