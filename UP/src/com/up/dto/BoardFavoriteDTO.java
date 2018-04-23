package com.up.dto;

public class BoardFavoriteDTO {
	private int fno;
    private int bno;
    private String sessionUser;
    private String useyn;
    
    public BoardFavoriteDTO() {}    
    
	public BoardFavoriteDTO(int bno, String sessionUser) {
		super();
		this.bno = bno;
		this.sessionUser = sessionUser;
	}
	
	public BoardFavoriteDTO(int bno, String sessionUser, String useyn) {
		super();
		this.bno = bno;
		this.sessionUser = sessionUser;
		this.useyn = useyn;
	}

	public int getFno() {
		return fno;
	}

	public void setFno(int fno) {
		this.fno = fno;
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

	public String getUseyn() {
		return useyn;
	}

	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	
}
