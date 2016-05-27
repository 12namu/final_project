package com.eteam.room;

import java.sql.Timestamp;

public class Room_reservationDTO {
	private int re_Num;
    private int r_Num;
    private int g_Num;
    private Timestamp re_Date;
    private String m_Id;
	public int getRe_Num() {
		return re_Num;
	}
	public void setRe_Num(int re_Num) {
		this.re_Num = re_Num;
	}
	public int getR_Num() {
		return r_Num;
	}
	public void setR_Num(int r_Num) {
		this.r_Num = r_Num;
	}
	public int getG_Num() {
		return g_Num;
	}
	public void setG_Num(int g_Num) {
		this.g_Num = g_Num;
	}
	public Timestamp getRe_Date() {
		return re_Date;
	}
	public void setRe_Date(Timestamp re_Date) {
		this.re_Date = re_Date;
	}
	public String getM_Id() {
		return m_Id;
	}
	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}
}
