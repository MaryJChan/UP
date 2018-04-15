<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>

<!-- jstl 태그 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	/* font-family: 'Nanum Gothic', serif; */
	body {
		margin: 0;
		padding: 0;
		font-size: 12px;
		color: #9c9c9c;
		font-family: 'Nanum Gothic', serif;
	}
	a {
		text-decoration: none;
		color: #555;
	}
	#bdetail_wrap {
		width: 750px;
		margin: 0 auto;
		padding-top: 100px;
	}		
	#bdtail_title {
		padding: 10px;
		width: 730px;
		text-align: center;
		font-size: 14px;
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
		color: #555;
		font-weight: bold;
	}
	#bdtail_header2 {
		padding: 10px;
	}
	#bdtail_grade, #bdtail_date {
		color: #555;
	}
	#bdtail_date_hits_wrap {
		float: right;
	}
	#bdtail_header2 {
		border-bottom: 1px dotted #ccc;
	}	
	#bdtail_contents {
		padding: 10px 10px 50px 10px;
		color: #777;
	}
	#bdtail_comment_wrap {
		position: relative;
		padding: 0 0 15px 0;
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
		background-color: #f4f4f4;
	}
	#bdreply_store {
		padding-top: 15px;
	}
	#bdtail_comment_write {
		width: 646px;
		height: 36px;
		margin-left: 10px;		
		border: 1px solid #EDEDED;
		padding: 7px;
		vertical-align: middle;
	}
	#bdtail_registration {
		display: inline-block;
		width: 58px;
		height: 55px;
		position: absolute;
		right: 10px;
		bottom: 15px;
		text-align: center;
	}
	#bdtail_registration_img {
		height: 52px;		
		position: absolute;
		right: 0px;
		top: 0px;
	}
	#bdtail_registration_btn {
		display: inline-block;
		width: 55px;
		height: 52px;
		position: absolute;
		right: 0px;
		top: 3px;
	}	
	#bdtail_footer {
		padding: 10px;
		float: left;
		display: none;
	}
	#bdtail_footer2 {
		padding: 10px;
		float: right;
	}
	#bdtail_option {
		width: 100%;
		height: 38px;
		border-bottom: 2px solid #ccc;
	}
	.commend_registration_wrap {
		border-bottom: 1px dotted #ccc;		
	}
	.command_registration_title_wrap:first-child {
		position: relative;
		padding: 15px 10px 10px 10px;
	}
	.command_registration_title_wrap {
		padding: 15px 10px 10px 10px;
	}
	.command_registration_contents {
		padding: 5px 10px 15px 10px;
	}
	.commend_user {
		padding-right: 5px;
	}
	.command_date {
		padding-right: 5px;
		font-size: 10px;
		display: inline-block;
	}
	.command_reply {
		font-size: 11px;
		bottom: 0;
	}
	.reply_registration_wrap {
		border-bottom: 1px dotted #ccc;		
		position: relative;
	}
	#reply_check {
		position: absolute;
		top: 7px;
		left: 20px;
		color: #777;
		font-size: 20px;
		font-weight: bold;
	}
	.reply_registration_title_wrap {
		padding: 15px 10px 10px 50px;
	}
	.reply_registration_contents {
		padding: 5px 10px 15px 50px;
	}
	.reply_user {
		padding-right: 5px;
	}
	.reply_date {
		padding-right: 5px;
		font-size: 10px;
		display: inline-block;
	}	
	#bdtail_hits_wrap {
		padding-right: 10px;
	}
	#bdtail_hits{
		color: #777;
	}
	/* 모달 창  */
	/* The board_modal (background) */
	.board_modal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		padding-top: 250px; /* Location of the box */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0, 0, 0); /* Fallback color */
		background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	}
	
	/* board_modal Content */
	.board_modal-content {
		background-color: #fefefe;
		margin: auto;
		padding: 20px;
		border: 1px solid #888;
		width: 300px;
		height: 250px;
	}
	
	/* The Close Button */
	.delete_close {
		color: #aaaaaa;
		float: right;
		font-size: 28px;
		font-weight: bold;
		cursor: pointer;
	}
	
	.close:hover, .close:focus {
		color: #000;
		text-decoration: none;
		cursor: pointer;
	}
	#delete_window_wrap{
		width: 300px;
		margin: 0 auto;
	}
	#delete_window_text {
		height: 180px;		
		line-height: 210px;
		color: #666;
		text-align: center;
		font-size: 16px;	
	}
	#delete_window_select {
		padding-top: 10px;
		height: 32px;
	}
	.delete_selectbox {
		display: inline-block;
		width: 50px;
		height:30px;
		line-height: 30px;
		font-size: 14px;
		text-align: center;
	}
	#select_false {
		border: 1px solid #ccc;
		float: left;
		margin-left: 30px;
	}
	#select_true {
		border: 1px solid #e51130;
		background-color: #e51130;
		float: right;
		color: white;
		margin-right: 30px;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){		
		var boardWriter = '<%=request.getAttribute("writer") %>';
		var sessionUser = '<%=session.getAttribute("sid") %>';

		if(boardWriter == sessionUser) {
			$("#bdtail_footer").css("display", "block");
		} else {
			$("#bdtail_footer").css("display", "none");
		}
	});		
	
	$(document).on("click", "#bdtail_registration_img", function(){	
		var bno = '<%=request.getAttribute("bno") %>';				
		var sessionUser = '<%=session.getAttribute("sid") %>';
		var replyComment = $("#bdtail_comment_write").val();
		
		$.ajax({
			// 가야할 서블릿 지정
			url : "boardreplystore.bizpoll",
			// 방식 지정 [GET | POST]
			type : "POST",
			// 타입 지정
			dataType : "JSON",
			// 쿼리스트링과 같은 =에 공백X     //data를 dataTpye가방에 담아 type방식으로 url로 보냄
			data : "bno=" + bno + "&sessionUser=" + sessionUser + "&replyComment=" + replyComment,
			//성공했을때	
			success : function(data) {
				if (data.flag == "1") {
					$("#bdreply_store").submit();
				} else if (data.flag == "0") {
					$("#pw_error").text("ID 또는 비밀번호가 틀렸습니다.").css("display", "block");
				}
			},
			//실패했을떄
			error : function(data) {
				alert("System Error!!!");
			}
		});			
	});			
</script>

</head>
<body>
	<div id="bdetail_wrap">
		<div id="bdtail_header">
			<div id="bdtail_title">
				${boardDetailList.title}
			</div>			
		</div>
		<div id="bdtail_header2">
			<div id="bdtail_header3">
				<span class="user_fix">
					Name : 
				</span>
				<span id="bdtail_user">
					<a href="#">${boardDetailList.writer}</a>
				</span>
			</div>			
			<span id="bdtail_date_hits_wrap">
				<span id="bdtail_hits_wrap">
					<span class="hits_fix">
						Hits : 
					</span>
					<span id="bdtail_hits">
						${boardDetailList.hits}
					</span>
				</span>	
				<span class="date_fix">
					Date : 
				</span>
				<span id="bdtail_date">
					${boardDetailList.regdate}
				</span>				
			</span>
			<span id="bdtail_header4">	
				<span class="grade_fix">
					Grade : 
				</span>
				<span id="bdtail_grade">
					A
				</span>
			</span>
		</div>
		<div id="bdtail_contents">
			${boardDetailList.content}
		</div>
		<div id="bdtail_comment_wrap">
			<c:forEach items="${boardReply}" var="reply">
				<div class="commend_registration_wrap">
					<div class="command_registration_title_wrap">
						<a href="#" class="commend_user">
							${reply.sessionUser}
						</a>
						<span class="command_date">
							2018-04-10 14:20
						</span>
						<a href="#" class="command_reply">
							답글
						</a>
					</div>
					<div class="command_registration_contents">
						${reply.replyComment}
					</div>
				</div>			
				<div class="reply_registration_wrap">
					<div class="reply_registration_title_wrap">
						<span id="reply_check">ㄴ</span>
						<a href="#" class="reply_user">
							dddddd
						</a>
						<span class="reply_date">
							2018-04-10 14:22
						</span>					
					</div>
					<div class="reply_registration_contents">
						저두영
					</div>
				</div>
			</c:forEach>
			<div id="command_line">
				<form action="boarddetail.bizpoll" method="GET" name="bdreply_store"  id="bdreply_store">
					<textarea name="bdtail_comment_write" id="bdtail_comment_write"></textarea>					
					<input type="hidden" name="bno"  value="${boardDetailList.bno}">
					<input type="hidden" name="hits"  value="${boardDetailList.hits}">
				</form>
				<span id="bdtail_registration">
					<a href="#" id="bdtail_registration_btn">등록
						<img id="bdtail_registration_img" alt="bdtail_registration_img" src="image/up_boardwrite.png">
					</a>
				</span>
			</div>			
		</div>
		<div id="bdtail_option">
			<span id="bdtail_footer">
				<span id="bdtail_update">
					<a href="boardupdateview.bizpoll?bno=${boardDetailList.bno}" id="bdtail_btn_update">수정</a>
				</span>
				<span class="bdtail_share">|</span>
				<span id="bdtail_delete">
					<a href="#" id="bdtail_btn_delete">삭제</a>
				</span>
			</span>
			<span id="bdtail_footer2">			
				<span id="bdtail_write">
					<a href="boardregisterview.bizpoll">글쓰기</a>
				</span>
				<span class="bdtail_share">|</span>
				<span id="bdtail_list">
					<a href="board.bizpoll">목록</a>
				</span>
			</span>
		</div>
	</div>
	<div id="myboard_modal" class="board_modal">
		<div class="board_modal-content">
			<span class="delete_close">&times;</span>			
			<div id="delete_window_wrap">
				<div id="delete_window_text">
					  게시글을 삭제하시겠습니까?
				</div>
				<div id="delete_window_select">
					<a href="#" id="select_false" class="delete_selectbox">
						아니요
					</a>
					<a href="boarddelete.bizpoll?bno=${boardDetailList.bno}" id="select_true" class="delete_selectbox">
						예
					</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		
		// Get the board_modal
		var board_modal = document.getElementById("myboard_modal");

		// Get the button that opens the board_modal
		var btn_delete = document.getElementById("bdtail_btn_delete");
		
		// Get the <span> element that closes the board_modal
		var delete_span = document.getElementsByClassName("delete_close")[0];
		var delete_btn = document.getElementById("select_false");
		
		// When the user clicks the button, open the board_modal 
		btn_delete.onclick = function() {
			board_modal.style.display = "block";
		}
		delete_btn.onclick = function() {
			board_modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the board_modal
		delete_span.onclick = function() {
			board_modal.style.display = "none";
		}
		delete_btn.onclick = function() {
			board_modal.style.display = "none";
		}
		// When the user clicks anywhere outside of the board_modal, close it
		window.onclick = function(event) {
			if (event.target == board_modal) {
				board_modal.style.display = "none";
			}
		}
	</script>
</body>
</html>