package com.up.dto;


// 검색기준 또는 분류기준
public class CriteriaDTO {	
	private int page;					// 페이지번호(하단의 번호들 클릭)
	private int perPageNum;		// 한 페이지에 보여줄 게시글 수
	
	// 디폴트 생성자에 기본값 지정
	public CriteriaDTO() {
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		// 1페이지보다 작으면 항상 1페이지를 반환함
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}

	// method for MyBatis SQL Mapper: 조회 시작 Row 취득하는 메서드
	public int getPageStart() {
		return (((this.page-1) * perPageNum) + 1);
	}
	
	// 페이지당 띄워줄 게시글수 적용(10개씩)
	// method for MyBatis SQL Mapper: 조회 마지막 Row 취득하는 메서드
	public int getPerPageNum() {
		return this.page * perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
		// 2페이지 * 10 = 20번 게시글까지 출력
	}
	
	
	

}
