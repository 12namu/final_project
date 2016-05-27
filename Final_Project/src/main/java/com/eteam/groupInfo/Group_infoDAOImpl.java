package com.eteam.groupInfo;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

@Repository
public class Group_infoDAOImpl implements Group_infoDAO {

	@Inject
	DataSource datasource;
}
