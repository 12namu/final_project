package com.eteam.gMember;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

@Repository
public class Group_joinDAOImpl implements Group_joinDAO {

	@Inject
	DataSource datasource;
}
