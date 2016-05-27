package com.eteam.groupInfo;

import java.sql.Date;

public class Group_infoDTO {
	private int g_Num;
    private int g_Name;
    private String m_Id;
    private String g_Category;
    private int mem_Count;
    private String g_Local1;
    private String g_Local2;
    private Date g_Date;
	public int getG_Num() {
		return g_Num;
	}
	public void setG_Num(int g_Num) {
		this.g_Num = g_Num;
	}
	public int getG_Name() {
		return g_Name;
	}
	public void setG_Name(int g_Name) {
		this.g_Name = g_Name;
	}
	public String getM_Id() {
		return m_Id;
	}
	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}
	public String getG_Category() {
		return g_Category;
	}
	public void setG_Category(String g_Category) {
		this.g_Category = g_Category;
	}
	public int getMem_Count() {
		return mem_Count;
	}
	public void setMem_Count(int mem_Count) {
		this.mem_Count = mem_Count;
	}
	public String getG_Local1() {
		return g_Local1;
	}
	public void setG_Local1(String g_Local1) {
		this.g_Local1 = g_Local1;
	}
	public String getG_Local2() {
		return g_Local2;
	}
	public void setG_Local2(String g_Local2) {
		this.g_Local2 = g_Local2;
	}
	public Date getG_Date() {
		return g_Date;
	}
	public void setG_Date(Date g_Date) {
		this.g_Date = g_Date;
	}
}
