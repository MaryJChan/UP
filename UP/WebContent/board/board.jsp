<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
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
		width: 750px;
		margin: 0 auto;
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
		top: -10px;
	}
	#search_btn {
		width: 50px;
		height: 27px;
		position: absolute;
		background-color: #e51130;
		left: 151px;
		color: white;
		text-align: center;
		line-height: 27px;
		border-radius: 2px;
	}
	.board_box {
		width: 716px;
	}
	.board_view_q {
		width: 746px;
		padding: 12px 2px 12px 2px;
		line-height: 1.7em;
		border-bottom: 1px solid #ccc;
	}
	#board_attr {
		padding: 15px 2px 15px 2px;
		line-height: 1.7em;
		width: 746px;
		border: 1px solid #ccc;
		border-left: 0px;
		border-right: 0px;
		font-weight: bold;
		font-size: 14px;
	}
	#board_num {
		width: 50px;
	}
	#board_title {
		width: 430px;
	}
	#board_user {
		width: 90px;
	}
	#board_day {
		width: 75px;
	}
	#board_click {
		width: 50px;		
	}
	.share_attr {
		font-weight: lighter;
		color: #ccc;
	}
	.board_attr_option {
		text-align: center;
		display: inline-block;
	}
	.board_view_a {
		color: #666;
		text-align: center;
		padding-right: 8px;
		display: inline-block;
	}
	.a_boarder_num {
		width: 50px;
	}
	.a_boarder_title {
		width: 430px;
		text-align:  left;
		padding-left: 8px;
		padding-right: 0;
	}
	.a_boarder_user {
		width: 90px;
	}
	.a_boarder_day {
		width: 75px;
		padding-left: 3px;
		padding-right: 5px;
	}
	.a_boarder_click {
		width: 49px;
		padding: 0;
	}
	.pagination {
		width: 690px;
		display: inline-block;
		text-align: center;
		padding: 30px;
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
		padding: 20px 5px 0 5px;
		height: 27px;
	}
	#search_select {
		height: 27px;
	}
	#board_category_wrap {
		height: 27px;
		padding: 0 0 10px 5px;
	}
	#board_category {
		height: 27px;
	}
</style>

<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#nologin_write").on("click", function(){
			$("#myModal").css("display", "block");
		});
	});
</script>
</head>
<body>
	<div id="wrap_board">
		<h1 class="title_r">Q&A 게시판</h1>	
		<div id="board_category_wrap">			
			<select name="board_category" id="board_category">
				<option value>카테고리 선택</option>
				<option value="상품 문의">상품 문의</option>
				<option value="배송 문의">배송 문의택</option>
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
				<span id="board_day" class="board_attr_option">날짜</span>
				<span class="share_attr">|</span>
				<span id="board_click" class="board_attr_option">조회수</span>
			</div>			
			<c:forEach items="${boardList}" var="list">
				<div class="board_view_q">
					<span class="board_view_a a_boarder_num">
						${list.bno}
					</span>
					<a href="boarddetail.bizpoll?bno=${list.bno}&hits=${list.hits}" class="board_view_a a_boarder_title" >
						${list.title}
					</a>
					<a href="#" class="board_view_a a_boarder_user">
						${list.writer}
					</a>
					<span class="board_view_a a_boarder_day" >
						<fmt:formatDate pattern="yyyy-MM-dd" value="${list.regdate}"/>
					</span>
					<span class="board_view_a a_boarder_click">
						${list.hits}
					</span>				
				</div>
			</c:forEach>
		</div>
		
		<div id="board_tail_wrap">
			<span>
				<select id="search_select" name="search_select">
					<option class="select_value"  value="제목">제목</option>
					<option class="select_value"  value="작성자">작성자</option>
					<option class="select_value"  value="내용">내용</option>
					<option class="select_value"  value="제목+내용">제목+내용</option>
				</select>
			</span>
			<span class="faqs_search">
				<form action="" name="search_board" id="search_board" method="GET">
					<input type="text" name="SearchWd" id="SearchWd" class="sr_input">
				</form>
				<a href="#"  id="search_btn">검색</a>
			</span>
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
				<a href="board.bizpoll?page=${idx}"<c:out value="${pageMaker.criDto.page == idx? 'class=active' : ' '}"/>>${idx}</a>
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<a href="board.bizpoll?page=${pageMaker.endPage+1}">&raquo;</a>
			</c:if>
		</div>
	</div>

</body>
</html>