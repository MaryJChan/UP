package com.up.dto;

public class BoardReplyDTO {
	private int rno;
	private int bno;
	private String sessionUser;
	private String replyComment;
	
	public BoardReplyDTO(){};
	
	public BoardReplyDTO(int bno, String sessionUser, String replyComment) {
		super();
		this.bno = bno;
		this.sessionUser = sessionUser;
		this.replyComment = replyComment;
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
	
}
