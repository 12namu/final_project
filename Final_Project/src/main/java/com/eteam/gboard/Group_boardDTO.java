package com.eteam.gboard;

import java.sql.Date;

public class Group_boardDTO {
	private int b_Num;
    private int g_Num;
    private String b_Writer;
    private String b_Title;
    private String b_Contents;
    private Date b_Date;
	public int getB_Num() {
		return b_Num;
	}
	public void setB_Num(int b_Num) {
		this.b_Num = b_Num;
	}
	public int getG_Num() {
		return g_Num;
	}
	public void setG_Num(int g_Num) {
		this.g_Num = g_Num;
	}
	public String getB_Writer() {
		return b_Writer;
	}
	public void setB_Writer(String b_Writer) {
		this.b_Writer = b_Writer;
	}
	public String getB_Title() {
		return b_Title;
	}
	public void setB_Title(String b_Title) {
		this.b_Title = b_Title;
	}
	public String getB_Contents() {
		return b_Contents;
	}
	public void setB_Contents(String b_Contents) {
		this.b_Contents = b_Contents;
	}
	public Date getB_Date() {
		return b_Date;
	}
	public void setB_Date(Date b_Date) {
		this.b_Date = b_Date;
	}
}
