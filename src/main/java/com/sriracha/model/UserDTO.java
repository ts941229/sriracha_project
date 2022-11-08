package com.sriracha.model;

public class UserDTO {
	private int user_num;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_presence;
	
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_presence() {
		return user_presence;
	}
	public void setUser_presence(String user_presence) {
		this.user_presence = user_presence;
	}
}
