package com.ezen.dto;

import java.sql.Timestamp;

public class MembersVO{
	private int admin;
	private String userid;	
	private String pwd;
	private String pwd_check;
	private String name;
	private int yy;
	private int mm;
	private int dd;
	private String email;
	private String mobile; 
	
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPwd_check() {
		return pwd_check;
	}
	public void setPwd_check(String pwd_check) {
		this.pwd_check = pwd_check;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYy() {
		return yy;
	}
	public void setYy(int yy) {
		this.yy = yy;
	}
	public int getMm() {
		return mm;
	}
	public void setMm(int mm) {
		this.mm = mm;
	}
	public int getDd() {
		return dd;
	}
	public void setDd(int dd) {
		this.dd = dd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	@Override
	public String toString() {
		return "MembersVO [admin=" + admin + ", userid=" + userid + ", pwd=" + pwd + ", pwd_check=" + pwd_check
				+ ", name=" + name + ", yy=" + yy + ", mm=" + mm + ", dd=" + dd + ", email=" + email + ", mobile="
				+ mobile + "]";
	}
	
}