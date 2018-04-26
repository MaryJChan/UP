<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		padding: 0;
		margin: 0;
		font-size: 12px;
	}
	a {
		text-decoration: none;
	}
	#wrap_board {
		box-shadow: 0px 0px 5px #d8d8d8;
		width: 750px;
		margin: 100px auto;
	}
	.title_r {
		font-size: 36px;
		line-height: 1.4em;
		font-weight: bold;
		color: #d60013;
		font-family: Tahoma, Helvetica;
		letter-spacing: -1px;
		padding-top: 60px;
		text-align: center;
		padding-bottom: 30px;
	}
	.faqs_search {
		margin: 22px 0 30px 0;
		line-height: 30px;
		position: relative;
	}
	#SearchWd {
		padding-left: 5px;
		width: 145px;
		height: 25px;
		line-height: 25px;
		background: #fff;
		border: 1px solid #ccc;
		font-size: 11px;
		vertical-align: middle;
		outline: none;
		position: absolute;
		top: -27px;
		left: 95px;
	}
	#search_btn {
		width: 50px;
		height: 27px;
		position: absolute;
		background-color: #e51130;
		top: -27px;
		left: 246px;
		color: white;
		text-align: center;
		line-height: 27px;
		border-radius: 2px;
	}
	.board_box {
		width: 716px;
	}
	.board_view_q {
		width: 726px;
		padding: 12px 2px 12px 2px;
		line-height: 1.7em;
		border-bottom: 1px solid #ccc;
		margin: 0 10px;
	}
	#board_attr {
		margin: 0 10px;
		padding: 15px 2px 15px 2px;
		line-height: 1.7em;
		width: 726px;
		border: 1px solid #ccc;
		border-left: 0px;
		border-right: 0px;
		font-weight: bold;
		font-size: 14px;
	}
	#board_num {
		width: 47px;
	}
	#board_title {
		width: 360px;
	}
	#board_user {
		width: 70px;
	}
	#board_day {
		width: 75px;
	}
	#board_click {
		width: 55px;		
	}
	#board_goodcnt {
		width: 55px;
	}
	.share_attr {
		font-weight: lighter;
		color: #ccc;
	}
	.board_attr_option {
		text-align: center;
		display: inline-block;
		cursor: pointer;
	}
	.board_view_a {
		color: #666;
		text-align: center;
		padding-right: 8px;
		display: inline-block;
	}
	.a_boarder_num {
		width: 47px;
	}
	.a_boarder_title {
		width: 360px;
		text-align:  left;
		padding-left: 8px;
		padding-right: 0;
	}
	.a_boarder_user {
		width: 70px;
	}
	.a_boarder_day {
		width: 75px;
		padding-left: 3px;
		padding-right: 5px;
	}
	.a_boarder_click {
		width: 54px;
		padding-left: 3px;
		padding-right: 5px;
	}
	.a_boarder_goodcnt {
		width: 57px;
		padding-left: 3px;
		padding-right: 0px;
	}
	.pagination {
		text-align: center;
		padding: 15px;
		margin: 0 10px;
	}	
	.pagination a {
		color: #666;
	    padding: 8px 16px;
	    border-radius: 2px;
	    /* transition: background-color .3s; */
	}
	/* .pagination a.active {
	    background-color: #4CAF50;
	    color: white;
	} */
	#board_write {
		width: 740px;
		height: 30px;
	}
	.board_write_btn {
		width: 70px;
		height: 25px;
		line-height: 25px;
		display: inline-block;
		float: right;
		font-size: 12px;
		text-align: center;
		border: 1px solid #e51130;
		background-color: #e51130;
		border-radius: 2px;
		color: white;
	}
	.active {
		background-color: #e51130;
		color: white!important;
	}
	#search_board {
		display: inline-block;
	}
	#board_tail_wrap {
		padding: 20px 5px 25px 5px;
		margin: 0 10px;
		height: 27px;
		border-bottom: 1px dotted #eee;
	}
	#search_select {
		height: 27px;
	}
	#board_category_wrap {
		margin: 0 10px;
		height: 27px;
		padding: 0 5px 10px 5px;
	}
	#board_category {
		height: 27px;
		float: right;
	}
	.board_none_list {
		text-align: center;
	}
	#board_total_count {
		margin: 0 10px 0 10px;
		padding: 16px 22px 0; 
		text-align: right;
	}
	.search_result {
		color: #d60013;
	}
	#board_total_count_view {
		height: 37px;
		line-height:37px;
	}
	.new_time {
		background-color: #FF8224;
		font-size: 10px;
		color: white;
		border-radius: 5px;
		padding: 1px 3px;
	}
	#board_file_view{
		display: inline-block;
		margin: auto;
	}
</style>

<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// 카테고리 선택시 페이지 이동후 카테고리 셀렉트박스 고정 코딩
		var category_value = $("#category_value").val();
		var board_category = $("#board_category");
		if (category_value == "전체") {
			board_category.val("전체").prop("selected", true);
		} else if (category_value == "상품 문의") {
			board_category.val("상품 문의").prop("selected", true);
		} else if (category_value == "배송 문의") {
			board_category.val("배송 문의").prop("selected", true);
		} else if (category_value == "기타 문의") {
			board_category.val("기타 문의").prop("selected", true);
		}
		
		// 검색 옵션 선택후 검색시 페이지 이동후 검색옵션 셀렉트박스 고정 코딩
		var searchOption_value = $("#searchOption_value").val();
		var search_select = $("#search_select");
		if (searchOption_value == "제목") {
			search_select.val("제목").prop("selected", true);
		} else if (searchOption_value == "작성자") {
			search_select.val("작성자").prop("selected", true);
		} else if (searchOption_value == "내용") {
			search_select.val("내용").prop("selected", true);
		} else if (searchOption_value == "제목+내용") {
			search_select.val("제목+내용").prop("selected", true);
		}
		
		// 컬럼별 정렬 선택시 페이지 이동후 컬럼 고정 코딩
		var lineup = $("#board_lineup_value").val();
		var board_num = $("#board_num");
		var board_title = $("#board_title");
		var board_user = $("#board_user");
		var board_day = $("#board_day");
		var board_click = $("#board_click");
		var board_goodcnt = $("#board_goodcnt");
		if(lineup == "번 호 ↓"){
			board_num.text(lineup);
			board_num.css("color", "#d60013");
		} else if(lineup == "번 호 ↑") {
			board_num.text(lineup);
			board_num.css("color", "#d60013");
		} else if(lineup == "제목 ↓") {
			board_title.text(lineup);
			board_title.css("color", "#d60013");
		} else if(lineup == "제목 ↑") {
			board_title.text(lineup);
			board_title.css("color", "#d60013");
		} else if(lineup == "작성자 ↓") {
			board_user.text(lineup);
			board_user.css("color", "#d60013");
		} else if(lineup == "작성자 ↑") {
			board_user.text(lineup);
			board_user.css("color", "#d60013");
		} else if(lineup == "작성일 ↓") {
			board_day.text(lineup);
			board_day.css("color", "#d60013");
		} else if(lineup == "작성일 ↑") {
			board_day.text(lineup);
			board_day.css("color", "#d60013");
		} else if(lineup == "조회수 ↓") {
			board_click.text(lineup);
			board_click.css("color", "#d60013");
		} else if(lineup == "조회수 ↑") {
			board_click.text(lineup);
			board_click.css("color", "#d60013");
		} else if(lineup == "추천수 ↓") {
			board_goodcnt.text(lineup);
			board_goodcnt.css("color", "#d60013");
		} else if(lineup == "추천수 ↑") {
			board_goodcnt.text(lineup);
			board_goodcnt.css("color", "#d60013");
		}
		
		// 로그인 하지 않은 상태에서 글쓰기 버튼 클릭시 로그인 모달창 띄우는 코딩
		$("#nologin_write").on("click", function(){
			$("#myModal").css("display", "block");
		});
	});
	
		
	$(document).on("click", ".board_attr_option", function(){		
		$(".board_attr_option").css("color", "#333");		
		
		var lineup_text = $(this).text();				
		var lineup_none = $("#board_lineup_value");
		var lineup = $("#board_lineup_value").val();
		
		$("#board_num").text("번 호");
		$("#board_title").text("제목");
		$("#board_user").text("작성자");
		$("#board_day").text("작성일");
		$("#board_click").text("조회수");
		$("#board_goodcnt").text("추천수");
		
		if(lineup_text == "번 호 ↓"){
			$(this).text("번 호 ↑").css("color", "#d60013");			
		} else if(lineup_text == "번 호 ↑" || lineup_text == "번 호") {
			$(this).text("번 호 ↓").css("color", "#d60013");
		} else if(lineup_text == "제목 ↓") {
			$(this).text("제목 ↑").css("color", "#d60013");
		} else if(lineup_text == "제목 ↑" || lineup_text == "제목") {
			$(this).text("제목 ↓").css("color", "#d60013");
		} else if(lineup_text == "작성자 ↓") {
			$(this).text("작성자 ↑").css("color", "#d60013");
		} else if(lineup_text == "작성자 ↑" || lineup_text == "작성자") {
			$(this).text("작성자 ↓").css("color", "#d60013");
		} else if(lineup_text == "작성일 ↓") {
			$(this).text("작성일 ↑").css("color", "#d60013");
		} else if(lineup_text == "작성일 ↑" || lineup_text == "작성일") {
			$(this).text("작성일 ↓").css("color", "#d60013");
		} else if(lineup_text == "조회수 ↓") {
			$(this).text("조회수 ↑").css("color", "#d60013");
		} else if(lineup_text == "조회수 ↑" || lineup_text == "조회수") {
			$(this).text("조회수 ↓").css("color", "#d60013");
		} else if(lineup_text == "추천수 ↓") {
			$(this).text("추천수 ↑").css("color", "#d60013");
		} else if(lineup_text == "추천수 ↑" || lineup_text == "추천수") {
			$(this).text("추천수 ↓").css("color", "#d60013");
		}
		lineup_none.val($(this).text());
		var category_value = $("#board_category").val();
		var board_lineup_value = $("#board_lineup_value").val();
		location.href="boardoption.bizpoll?category_value="+category_value + "&board_lineup_value=" + board_lineup_value + "&search_select=제목&SearchWd=";
	});
	
	$(document).on("click", "#search_btn", function(){
		$("#search_board").submit();
	});
	
	$(document).on("change", "#board_category", function(){
		var category_value = $(this).val();
		var board_lineup_value = $("#board_lineup_value").val();
		location.href="boardoption.bizpoll?category_value="+category_value + "&board_lineup_value=" + board_lineup_value + "&search_select=제목&SearchWd=";
	});
</script>
</head>
<body>
	<div id="wrap_board">		
		<h1 class="title_r">Q & A 게시판</h1>		
		<div id="board_category_wrap">		
			<span id="board_total_count_view">
				총 
				<span class="search_result">${pageMaker.totalCount}</span>
				건의 게시글 출력
			</span>		
			<select name="board_category" id="board_category">
				<option value="전체">카테고리 선택</option>
				<option value="상품 문의">상품 문의</option>
				<option value="배송 문의">배송 문의</option>
				<option value="기타 문의">기타 문의</option>
			</select>			
		</div>			
		<div class="board_box">			
			<div id="board_attr">
				<span id="board_num" class="board_attr_option">번 호</span>
				<span class="share_attr">|</span>
				<span id="board_title" class="board_attr_option">제목</span>
				<span class="share_attr">|</span>
				<span id="board_user" class="board_attr_option">작성자</span>
				<span class="share_attr">|</span>
				<span id="board_day" class="board_attr_option">작성일</span>
				<span class="share_attr">|</span>
				<span id="board_click" class="board_attr_option">조회수</span>
				<span class="share_attr">|</span>
				<span id="board_goodcnt" class="board_attr_option">추천수</span>
			</div>
			<c:choose>
				<c:when test="${empty boardList}">
					<div class="board_view_q board_none_list">
						<c:choose>
							<c:when test="${flag != 1}">
								게시글이 없습니다.
							</c:when>
							<c:when test="${flag == 1}">
								[ ${pageMaker.criDto.category} ] ${pageMaker.criDto.searchOption}에 
								<span class="search_result">"${pageMaker.criDto.keyword}"</span>
								가 포함된 검색한 결과는 총
								<span class="search_result">${pageMaker.totalCount}</span>
								건 입니다.
							</c:when>
						</c:choose>
					 </div>
				</c:when>
				<c:otherwise>				
					<c:forEach items="${boardList}" var="list">
						<div class="board_view_q">
							<span class="board_view_a a_boarder_num">
								${list.bno_step} 
							</span>
							<a href="boarddetail.bizpoll?bno=${list.bno}&hits=${list.hits}&sessionuser=${sessionScope.loginUser.mid}" class="board_view_a a_boarder_title" >
								<c:forEach var = "i" begin = "1" end = "${list.re_level}">
									&nbsp;&nbsp;&nbsp;&nbsp;
								</c:forEach>
								<c:if test="${list.re_level > 0}">
									┖  RE : 
								</c:if>
								[${list.category}] ${list.title} 
								<c:if test="${list.replycnt != 0}">
									(${list.replycnt + list.recommentcnt})
								</c:if>
								<c:if test="${list.filesize > 0}">
									<img src="image/photo.png" id="board_file_view"></img>
								</c:if>
								<c:if test="${today2 == regdate2}">
									<span class="new_time">New</span>
								</c:if>
							</a>
							<a href="#" class="board_view_a a_boarder_user">
								${list.writer}
							</a>
							<span class="board_view_a a_boarder_day" >							
								<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
								<fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>								
								<c:if test="${today2 == regdate2}">
									<fmt:formatDate pattern="HH:mm" value="${list.regdate}"/>
								</c:if>
								<c:if test="${today2 != regdate2}">
									<fmt:formatDate pattern="yyyy-MM-dd" value="${list.regdate}"/>
								</c:if>							
							</span>
							<span class="board_view_a a_boarder_click">
								${list.hits}
							</span>			
							<span class="board_view_a a_boarder_goodcnt">
								${list.goodcnt}
							</span>	
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>						
		</div>		
		<div id="board_tail_wrap">			
			<form action="boardoption.bizpoll" name="search_board" id="search_board"  method="GET">
				<span>									
					<select id="search_select" name="search_select">
						<option class="select_value"  value="제목">제목</option>
						<option class="select_value"  value="작성자">작성자</option>
						<option class="select_value"  value="내용">내용</option>
						<option class="select_value"  value="제목+내용">제목+내용</option>
					</select>
				</span>
				<span class="faqs_search">					
					<input type="hidden" name="category_value" id="category_value" value="${pageMaker.criDto.category}">
					<input type="hidden" name="searchOption_value" id="searchOption_value" value="${pageMaker.criDto.searchOption}">
					<input type="hidden" id="board_lineup_value" name="board_lineup_value" value="${pageMaker.criDto.lineup}">
					<input type="text" name="SearchWd" id="SearchWd" class="sr_input">					
					<a href="#"  id="search_btn">검색</a>
				</span>
			</form>
			<span id= "board_write">
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
						<a href="#"  id="nologin_write" class="board_write_btn">글쓰기</a>
					</c:when>
					<c:otherwise>
						<a href="boardregisterview.bizpoll"  id="board_write_button" class="board_write_btn">글쓰기</a>
					</c:otherwise>
				</c:choose>
			</span>						
		</div>		
		<div class="pagination">
			<c:if test="${pageMaker.prev}">
				<a href="board.bizpoll?page=${pageMaker.startPage-1}">&laquo;</a>
			</c:if>
			<!-- ${pageMaker.startPage}값부터 ${pageMaker.endPage}값까지 반복-->
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				<%-- <c:out value="${pageMaker.criDto.page == idx? 'class=active' : ' '}"/> --%><!-- li태그 필요 -->
				<c:if test="${flag == 0}">
					<a href="board.bizpoll?page=${idx}"<c:out value="${pageMaker.criDto.page == idx? 'class=active' : ' '}"/>>${idx}</a>
				</c:if>
				<c:if test="${flag == 1}">
					<a href="boardoption.bizpoll?page=${idx}&search_select=${pageMaker.criDto.searchOption}&SearchWd=${pageMaker.criDto.keyword}&category_value=${pageMaker.criDto.category}"<c:out value="${pageMaker.criDto.page == idx? 'class=active' : ' '}"/>>${idx}</a>
				</c:if>	
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<a href="board.bizpoll?page=${pageMaker.endPage+1}">&raquo;</a>
			</c:if>
		</div>
	</div>
</body>
</html>
<%@ include file="../include/footer.jsp" %>