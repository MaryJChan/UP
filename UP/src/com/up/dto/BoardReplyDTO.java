package com.up.dto;

import java.util.Date;

public class BoardReplyDTO {
	private int rno;
	private int rno_step;
	private int bno;
	private String sessionUser;
	private String replyComment;
	private int ref;
	private int re_level;
	private Date regdate;
	
	public BoardReplyDTO(){};	
	
	public BoardReplyDTO(int rno_step, String replyComment) {
		super();
		this.rno_step = rno_step;
		this.replyComment = replyComment;
	}
	
	public BoardReplyDTO(int bno, String sessionUser, String replyComment) {
		super();
		this.bno = bno;
		this.sessionUser = sessionUser;
		this.replyComment = replyComment;
	}	
	
	public BoardReplyDTO(int rno_step, int bno, String sessionUser, String replyComment) {
		super();
		this.rno_step = rno_step;
		this.bno = bno;
		this.sessionUser = sessionUser;
		this.replyComment = replyComment;
	}	

	public BoardReplyDTO(int rno_step, int bno, String sessionUser, String replyComment, int ref, int re_level) {
		super();
		this.rno_step = rno_step;
		this.bno = bno;
		this.sessionUser = sessionUser;
		this.replyComment = replyComment;
		this.ref = ref;
		this.re_level = re_level;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getRno_step() {
		return rno_step;
	}

	public void setRno_step(int rno_step) {
		this.rno_step = rno_step;
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

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getRe_level() {
		return re_level;
	}

	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
}
