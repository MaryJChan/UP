package com.up.dto;

import java.sql.Date;

public class MemberDTO {

	private String mid;
	private String mpw;
	private String mname;
	private String msex;
	private String mbirth;
	private String mphone;
	private String mpostcode;
	private String madd;
	private String memail;
	private String mgrade;
	private Date regdate;
	
	public MemberDTO () {
		
	}	

	public MemberDTO(String mid, String mpw) {
		super();
		this.mid = mid;
		this.mpw = mpw;
	}	

	public MemberDTO(String mid, String mpw, String mname, String msex, String mbirth, String mphone, String mpostcode,
			String madd, String memail) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.msex = msex;
		this.mbirth = mbirth;
		this.mphone = mphone;
		this.mpostcode = mpostcode;
		this.madd = madd;
		this.memail = memail;
	}	

	public String getMpostcode() {
		return mpostcode;
	}

	public void setMpostcode(String mpostcode) {
		this.mpostcode = mpostcode;
	}

	public String getMadd() {
		return madd;
	}

	public void setMadd(String madd) {
		this.madd = madd;
	}

	public MemberDTO(String mid, String mpw, String mname, String msex, String mbirth, String mphone, String mpostcode,
			String madd, String memail, Date regdate) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.msex = msex;
		this.mbirth = mbirth;
		this.mphone = mphone;
		this.mpostcode = mpostcode;
		this.madd = madd;
		this.memail = memail;
		this.regdate = regdate;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMsex() {
		return msex;
	}

	public void setMsex(String msex) {
		this.msex = msex;
	}

	public String getMbirth() {
		return mbirth;
	}

	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMgrade() {
		return mgrade;
	}

	public void setMgrade(String mgrade) {
		this.mgrade = mgrade;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	
}
