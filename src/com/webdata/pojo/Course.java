package com.webdata.pojo;

public class Course{
	private int number;
	private String monday;
	private String tuesday;
	private String wednesday;
	private String thursday;
	private String friday;
	
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getMonday() {
		return monday;
	}
	public void setMonday(String monday) {
		this.monday = monday;
	}
	public String getTuesday() {
		return tuesday;
	}
	public void setTuesday(String tuesday) {
		this.tuesday = tuesday;
	}
	public String getWednesday() {
		return wednesday;
	}
	public void setWednesday(String wednesday) {
		this.wednesday = wednesday;
	}
	public String getThursday() {
		return thursday;
	}
	public void setThursday(String thursday) {
		this.thursday = thursday;
	}
	public String getFriday() {
		return friday;
	}
	public void setFriday(String friday) {
		this.friday = friday;
	}
	@Override
	public String toString() {
		return "Course [number=" + number + ", monday=" + monday + ", tuesday=" + tuesday + ", wednesday=" + wednesday
				+ ", thursday=" + thursday + ", friday=" + friday + "]";
	}
	
}