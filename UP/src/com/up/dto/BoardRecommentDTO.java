package com.up.dto;

import java.util.Date;

public class BoardRecommentDTO {
	private int rcno;	
	private int bno;
	private int rno;
	private String sessionUser;
	private String recomment;
	private Date regdate;
	
	public BoardRecommentDTO ( ) {}	

	public BoardRecommentDTO(int bno, int rno, String sessionUser, String recomment) {
		super();
		this.bno = bno;
		this.rno = rno;
		this.sessionUser = sessionUser;
		this.recomment = recomment;
	}
	
	public BoardRecommentDTO(int rcno, int bno, int rno, String sessionUser, String recomment, Date regdate) {
		super();
		this.rcno = rcno;
		this.bno = bno;
		this.rno = rno;
		this.sessionUser = sessionUser;
		this.recomment = recomment;
		this.regdate = regdate;
	}

	public int getRcno() {
		return rcno;
	}

	public void setRcno(int rcno) {
		this.rcno = rcno;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getSessionUser() {
		return sessionUser;
	}

	public void setSessionUser(String sessionUser) {
		this.sessionUser = sessionUser;
	}

	public String getRecomment() {
		return recomment;
	}

	public void setRecomment(String recomment) {
		this.recomment = recomment;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}	
	
}
