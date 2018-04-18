package com.up.dto;

import java.util.Date;

public class BoardReplyDTO {
	private int rno;
	private int bno;
	private String sessionUser;
	private String replyComment;
	private Date regdate;
	
	public BoardReplyDTO(){};
	
	public BoardReplyDTO(int bno, String sessionUser, String replyComment) {
		super();
		this.bno = bno;
		this.sessionUser = sessionUser;
		this.replyComment = replyComment;
	}	

	public BoardReplyDTO(int rno, int bno, String sessionUser, String replyComment, Date regdate) {
		super();
		this.rno = rno;
		this.bno = bno;
		this.sessionUser = sessionUser;
		this.replyComment = replyComment;
		this.regdate = regdate;
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

	public String getReplyComment() {
		return replyComment;
	}

	public void setReplyComment(String replyComment) {
		this.replyComment = replyComment;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}			
	
	
	
}
