package com.eteam.gboard;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

@Repository
public class Group_boardDAOImpl implements Group_boardDAO {

	@Inject
	DataSource datasource;
	
}
