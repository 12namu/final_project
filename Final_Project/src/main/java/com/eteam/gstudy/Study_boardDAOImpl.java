package com.eteam.gstudy;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

@Repository
public class Study_boardDAOImpl implements Study_boardDAO {

	@Inject
	DataSource dataSource;
}
