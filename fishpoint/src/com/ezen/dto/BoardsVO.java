package com.ezen.dto;

import java.sql.Timestamp;

public class BoardsVO {
	// 필드 만들기
	
	private int num;
	private int admin;
	private String name;
	private String title;
	private String content;
	private int readcount;
	private Timestamp writedate;
	// 소스 < 제네 get+set 눌러서 만들기
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Timestamp getWritedate() {
		return writedate;
	}
	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}
	@Override
	public String toString() {
		return "BoardsVO [num=" + num + ", admin=" + admin + ", name=" + name + ", title=" + title + ", content="
				+ content + ", readcount=" + readcount + ", writedate=" + writedate + "]";
	}
	

	
	
}
