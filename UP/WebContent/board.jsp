<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>

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
	}
	.faqs_search {
		padding: 20px;
		background: #eee;
		margin: 22px 0 30px 0;
		line-height: 30px;
		border: 1px solid #ddd;
		position: relative;
	}
	#SearchWd {
		width: 447px;
		height: 30px;
		line-height: 30px;
		background: #fff;
		border: 1px solid #e51130;
		font-size: 11px;
		margin-left: 100px;
		vertical-align: middle;
	}
	#search_btn {
		width: 60px;
		height: 32px;
		position: absolute;
		background-color: #e51130;
		top: 20px;
		right: 120px;
		color: white;
		text-align: center;
		line-height: 30px;
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
	#board_write_button {
		width: 70px;
		height: 20px;
		line-height: 20px;
		display: inline-block;
		float: right;
		font-size: 12px;
		text-align: center;
		border: 1px solid #ccc;
		border-radius: 3px;
		color: #666;
	}
</style>

<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="wrap_board">
		<h1 class="title_r">게시판</h1>
		<div class="faqs_search">
			<form action="" name="search_board" id="search_board" method="GET">
				<input type="text" name="SearchWd" id="SearchWd" class="sr_input">
			</form>
			<a href="#"  id="search_btn">검색</a>
		</div>
		<div class="board_box">
			<div id= "board_write">
				<a href="boardregisterview.bizpoll"  id="board_write_button">글쓰기</a>
			</div>			
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
					<a href="boraddetail.bizpoll?bno=${list.bno}" class="board_view_a a_boarder_title" >
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
		<div class="pagination">
			<a href="#">&laquo;</a>
			<a href="#">1</a>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
			<a href="#">&raquo;</a>
		</div>
	</div>

</body>
</html>