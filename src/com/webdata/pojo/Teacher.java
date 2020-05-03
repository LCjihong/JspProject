package com.webdata.pojo;

public class Teacher {
	private int id;
	private String name;
	private String sex;
	private String phone;
	private String pwd;
	private String leavetime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getLeavetime() {
		return leavetime;
	}
	public void setLeavetime(String leavetime) {
		this.leavetime = leavetime;
	}
	@Override
	public String toString() {
		return "Teacher [id=" + id + ", name=" + name + ", sex=" + sex + ", phone=" + phone + ", pwd=" + pwd
				+ ", leavetime=" + leavetime + "]";
	}
	
	
}
