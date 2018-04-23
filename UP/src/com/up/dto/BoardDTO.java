package com.up.dto;

import java.util.Date;

public class BoardDTO {
	
	private int bno;
	private String title;
	private String category;
	private String content;
	private String  writer;
	private int hits;
	private int replycnt;	
	private int recommentcnt;	
	private int goodcnt;	
	private Date regdate;
	
	public BoardDTO(){}			
	
	public BoardDTO(int bno, int hits) {
		super();
		this.bno = bno;
		this.hits = hits;
	}

	public BoardDTO(int bno, String title, String content) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
	}



	public BoardDTO(String title, String category, String content, String writer) {
		super();
		this.title = title;
		this.category = category;
		this.content = content;
		this.writer = writer;
	}

	public BoardDTO(int bno, String title, String content, String writer) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
	}

	public BoardDTO(int bno, String title, String category, String content, String writer, int hits, int replycnt, int goodcnt, Date regdate) {
		super();
		this.bno = bno;
		this.title = title;
		this.category = category;
		this.content = content;
		this.writer = writer;
		this.hits = hits;
		this.replycnt = replycnt;	
		this.goodcnt = goodcnt;
		this.regdate = regdate;		
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}	
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getReplycnt() {
		return replycnt;
	}

	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}

	public int getRecommentcnt() {
		return recommentcnt;
	}

	public void setRecommentcnt(int recommentcnt) {
		this.recommentcnt = recommentcnt;
	}
	
	public int getGoodcnt() {
		return goodcnt;
	}

	public void setGoodcnt(int goodcnt) {
		this.goodcnt = goodcnt;
	}	
	
}
