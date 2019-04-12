package com.bean;

public class Count {
	
	String user;
	int year;
	int month;
	int day;
	double money;
	String lei;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	int id;
	
	
	public Count(int year, int month, int day, double money, String lei) {
		// TODO 自动生成的构造函数存根
		this.year = year;
		this.month = month;
		this.day = day;
		this.money = money;
		this.lei = lei;
	}
	public Count(int id, int year, int month, int day, double money, String lei) {
		// TODO 自动生成的构造函数存根
		this.id = id;
		this.year = year;
		this.month = month;
		this.day = day;
		this.money = money;
		this.lei = lei;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public String getLei() {
		return lei;
	}
	public void setLei(String lei) {
		this.lei = lei;
	}
	
	

}
