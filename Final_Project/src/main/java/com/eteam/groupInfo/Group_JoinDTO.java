package com.eteam.groupInfo;

import java.sql.Date;

public class Group_JoinDTO {
	
	private int j_num;
	private int g_num;
	private String m_id;
	private Date j_Date;
	public int getJ_num() {
		return j_num;
	}
	public void setJ_num(int j_num) {
		this.j_num = j_num;
	}
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public Date getJ_Date() {
		return j_Date;
	}
	public void setJ_Date(Date j_Date) {
		this.j_Date = j_Date;
	}
	
	

}
