package com.eteam.basic;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

@Repository
public class Basic_boardDAOImpl implements Basic_boardDAO {

	@Inject
	DataSource datasource;
}
