package com.eteam.gMember;

import java.sql.Date;

public class Group_joinDTO {
	private int jNum;
	private int gNum;
	private String mId;
	private Date jDate;
	public int getjNum() {
		return jNum;
	}
	public void setjNum(int jNum) {
		this.jNum = jNum;
	}
	public int getgNum() {
		return gNum;
	}
	public void setgNum(int gNum) {
		this.gNum = gNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public Date getjDate() {
		return jDate;
	}
	public void setjDate(Date jDate) {
		this.jDate = jDate;
	}
}
