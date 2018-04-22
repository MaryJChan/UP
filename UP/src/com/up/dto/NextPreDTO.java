package com.up.dto;

import java.util.Date;

public class NextPreDTO {
	private int bno;
	private String title;
	private String writer;
	private String category;
	private String content;
	private int hits;
	private int goodcnt;
	private Date regdate;
	private int next_article_bno;
	private String next_title;
	private String next_writer;
	private Date next_regdate;
	private int pre_article_bno;
	private String pre_title;
	private String pre_writer;
	private Date pre_regdate;
	
	public NextPreDTO(){}

	public NextPreDTO(int bno, String title, String writer, String category, String content, int hits, int goodcnt,
			Date regdate, int next_article_bno, String next_title, String next_writer, Date next_regdate,
			int pre_article_bno, String pre_title, String pre_writer, Date pre_regdate) {
		super();
		this.bno = bno;
		this.title = title;
		this.writer = writer;
		this.category = category;
		this.content = content;
		this.hits = hits;
		this.goodcnt = goodcnt;
		this.regdate = regdate;
		this.next_article_bno = next_article_bno;
		this.next_title = next_title;
		this.next_writer = next_writer;
		this.next_regdate = next_regdate;
		this.pre_article_bno = pre_article_bno;
		this.pre_title = pre_title;
		this.pre_writer = pre_writer;
		this.pre_regdate = pre_regdate;
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

	public int getGoodcnt() {
		return goodcnt;
	}

	public void setGoodcnt(int goodcnt) {
		this.goodcnt = goodcnt;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getNext_article_bno() {
		return next_article_bno;
	}

	public void setNext_article_bno(int next_article_bno) {
		this.next_article_bno = next_article_bno;
	}

	public String getNext_title() {
		return next_title;
	}

	public void setNext_title(String next_title) {
		this.next_title = next_title;
	}

	public String getNext_writer() {
		return next_writer;
	}

	public void setNext_writer(String next_writer) {
		this.next_writer = next_writer;
	}

	public Date getNext_regdate() {
		return next_regdate;
	}

	public void setNext_regdate(Date next_regdate) {
		this.next_regdate = next_regdate;
	}

	public int getPre_article_bno() {
		return pre_article_bno;
	}

	public void setPre_article_bno(int pre_article_bno) {
		this.pre_article_bno = pre_article_bno;
	}

	public String getPre_title() {
		return pre_title;
	}

	public void setPre_title(String pre_title) {
		this.pre_title = pre_title;
	}

	public String getPre_writer() {
		return pre_writer;
	}

	public void setPre_writer(String pre_writer) {
		this.pre_writer = pre_writer;
	}

	public Date getPre_regdate() {
		return pre_regdate;
	}

	public void setPre_regdate(Date pre_regdate) {
		this.pre_regdate = pre_regdate;
	}
	
	
	
}
