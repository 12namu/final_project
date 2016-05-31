package com.eteam.gstudy;

import java.sql.Date;

public class Group_SubjectDTO {
	private int s_Num;
    private int g_Num;
    private String m_Id;
    private Date s_Date;
    private String s_Joinmem;
    private String s_Title;
    private String s_Contents;
    private String s_MeetingDay;
    
	public int getS_Num() {
		return s_Num;
	}
	public void setS_Num(int s_Num) {
		this.s_Num = s_Num;
	}
	public int getG_Num() {
		return g_Num;
	}
	public void setG_Num(int g_Num) {
		this.g_Num = g_Num;
	}
	public String getM_Id() {
		return m_Id;
	}
	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}
	public Date getS_Date() {
		return s_Date;
	}
	public void setS_Date(Date s_Date) {
		this.s_Date = s_Date;
	}
	public String getS_Joinmem() {
		return s_Joinmem;
	}
	public void setS_Joinmem(String s_Joinmem) {
		this.s_Joinmem = s_Joinmem;
	}
	public String getS_Title() {
		return s_Title;
	}
	public void setS_Title(String s_Title) {
		this.s_Title = s_Title;
	}
	public String getS_Contents() {
		return s_Contents;
	}
	public void setS_Contents(String s_Contents) {
		this.s_Contents = s_Contents;
	}
	public String getS_MeetingDay() {
		return s_MeetingDay;
	}
	public void setS_MeetingDay(String s_MeetingDay) {
		this.s_MeetingDay = s_MeetingDay;
	}
	
	
}
