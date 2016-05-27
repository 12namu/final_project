package com.eteam.message;

public class Receive_messageDTO {
	private int m_Num;
    private String receive_Id;
    private String m_Contents;
	public int getM_Num() {
		return m_Num;
	}
	public void setM_Num(int m_Num) {
		this.m_Num = m_Num;
	}
	public String getReceive_Id() {
		return receive_Id;
	}
	public void setReceive_Id(String receive_Id) {
		this.receive_Id = receive_Id;
	}
	public String getM_Contents() {
		return m_Contents;
	}
	public void setM_Contents(String m_Contents) {
		this.m_Contents = m_Contents;
	}
}
