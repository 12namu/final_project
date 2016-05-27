package com.eteam.room;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

@Repository
public class RoomDAOImpl implements RoomDAO {

	@Inject
	DataSource dataSource;
}
