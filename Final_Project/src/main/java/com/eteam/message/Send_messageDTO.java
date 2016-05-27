package com.eteam.message;

public class Send_messageDTO {
	private int m_Num;
    private String send_Id;
    private String m_Contents;
	public int getM_Num() {
		return m_Num;
	}
	public void setM_Num(int m_Num) {
		this.m_Num = m_Num;
	}
	public String getSend_Id() {
		return send_Id;
	}
	public void setSend_Id(String send_Id) {
		this.send_Id = send_Id;
	}
	public String getM_Contents() {
		return m_Contents;
	}
	public void setM_Contents(String m_Contents) {
		this.m_Contents = m_Contents;
	}
}
