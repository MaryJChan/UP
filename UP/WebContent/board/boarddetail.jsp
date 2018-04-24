<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
   
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
	
	/* ----------------------------------------- 상세 게시글 출력CSS ----------------------------------------- */
	#bdetail_wrap {
		width: 750px;
		margin: 100px auto;
		box-shadow: 0px 0px 5px #d8d8d8;
	}		
	#bdtail_title {
		padding: 20px 0;
		margin: 0 10px;
		width: 730px;
		text-align: center;
		font-size: 14px;
		border-bottom: 1px solid #ccc;
		color: #555;
		font-weight: bold;
	}
	#bdtail_header2 {
		padding: 10px;
		margin: 0 10px;
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
		margin: 0 10px;
		padding: 10px 10px 50px 10px;
		color: #777;
	}
	#bdtail_comment_wrap {
		position: relative;
		padding: 0 0 15px 0;
		background-color: #f4f4f4;
	}
	
	#bdtail_comment_write, .bdtail_reply_write, .bdtail_recommand_write, .bdtail_recommand_update_write {
		width: 636px;
		height: 36px;
		margin-left: 10px;		
		border: 1px solid #EDEDED;
		padding: 7px;
		vertical-align: middle;
		outline: none;
		resize: none;
	}
	#bdtail_registration, .bdtail_update_registration, .bdtail_recommand_write_registration, .bdtail_recommand_write_update {
		display: inline-block;
		width: 55px;
		height: 52px;
		position: absolute;
		right: 20px;
		bottom: 15px;
		text-align: center;
	}
	#bdtail_registration_img, .bdtail_update_img, .recommand_write_img, .recommand_update_img {
		height: 52px;		
		position: absolute;
		right: 0px;
	}
	.bdtail_registration_btn_css, .bdtail_update_btn_css, .recommand_write_btn_css, .recommand_update_btn_css {
		display: inline-block;
		width: 55px;
		height: 52px;
		position: absolute;
		right: 0px;
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
		margin: 0 10px;
		height: 38px;		
	}
	
	
	/* 댓글 CSS */
	#bdreply_store, .bdreply_update, .recommand_store, .recommand_update {
		padding-top: 15px;
		margin: 0 10px;
	}
	.commend_registration_wrap {
		position: relative;		
	}
	.command_registration_title_wrap:first-child {
		padding: 15px 10px 10px 10px;	
		margin: 0 10px;
	}
	.command_registration_title_wrap {
		padding: 15px 10px 10px 10px;
	}
	.command_registration_contents {
		padding: 5px 10px 15px 10px;
		border-bottom: 1px dotted #ccc;		
		margin: 0 10px;
	}
	#none_reply {
		padding: 15px 10px;
		text-align: center;
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
		margin: 0 10px;		
		padding: 15px 10px 10px 50px;
	}
	.reply_registration_contents {
		padding: 5px 10px 15px 50px;
		margin: 0 10px;
		border-bottom: 1px dotted #ccc;	
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
		float: right;
		margin-right: 30px;		
	}
	#select_true {
		border: 1px solid #e51130;
		background-color: #e51130;
		float: left;
		color: white;
		margin-left: 30px;
	}
	#bdtail_comment_count_wrap {
		padding: 10px 20px;
		background-color: white;
	}
	#nologin_commend_wirte {
		position: absolute;
		bottom: 34px;
		left: 35px;
	}
	#nologin_commend_wirte_btn {
		cursor: pointer;
		font-weight: bold;
	}
	.none_text {
		display: none;
	}
	.board_comment_option, .board_recomment_option {
		float: right;
	}
	.board_nexrPre_wrap {
		margin: 0 10px;
		height: 38px;
		border-bottom: 1px dotted #ccc;
	}
	.board_nextPre_tag {
		padding: 10px;
		float: left;
	}
	.nextPre_btn{
		width: 50px;
	}
	.nextPre_title{
		width: 360px;
	}
	.nextPre_writer{
		width: 120px;
	}
	.nextPre_regdate{
	
	}
	.nextPre_title_fix {
		color: #9c9c9c;
	}
	.delete_window_text {
		display: inline-block;
		margin: 0 124px!important;
		text-align: center;
	}
	.reply_text {
		width: 710px;
		border: none;
		background-color: #f4f4f4;
		color: #9c9c9c;
		outline: none;
	}
	.bdreply_update, .recommand_store, .recommand_update {
		padding-bottom: 15px;
		margin: 0px;
		display: inline-block;
	}
	.command_update_line, .recommand_store_line, .recommand_update_line{
		margin: 0 10px;
		border-bottom: 1px dotted #ccc;
		display: none;
	}
	.recommand_update_line {
		display: block;
	}
	.command_update_line_position, .recommand_store_line_position, .recommand_update_line_position {
		position: relative;
		width: 740px;
	}
	#bdtail_file_download_wrap{
		margin: 0 10px;
		padding: 10px;
		position: relative;
	}
	#bdtail_file_download__position {
		display: inline-block;
		float: right;
	}
	#bdtail_file_download_fix {
		display: inline-block;
	}
	#bdtail_file_download_btn {
		display: inline-block;
	}
	#bdtail_favorite_wrap {
		display: inline-block;
		float: right;
	}
	#bdtail_favorite_fix {
		display: inline-block; 
		font-size: 19px;
		height: 19px;
		line-height: 19px;
		padding: 0 5px;
	}
	#bdtail_favorite_btn {
		cursor: pointer;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	function comment_list() {
		var sessionUser = '<%=session.getAttribute("sid") %>';
		var bno = $("#bno").val();
		$.ajax({
			type: "post",
			url: "commentlist.bizpoll",
			data: "bno=" + bno + "&sessionUser=" + sessionUser,
			success: function(result) {				
				$("#commentList").html(result);
			}
		});
	}
	
	$(document).ready(function(){		
		var boardWriter = '<%=request.getAttribute("writer") %>';
		var sessionUser = '<%=session.getAttribute("sid") %>';

		comment_list();
		
		if(boardWriter == sessionUser) {
			$("#bdtail_footer").css("display", "block");
		} else {
			$("#bdtail_footer").css("display", "none");
		}
	
	});		
	
	// 좋아요 클릭 Ajax	
	$(document).on("click", "#bdtail_favorite_btn", function(){	
		var bno = ${boardDetailList.bno};
		var sessionUser = '<%=session.getAttribute("sid") %>';
		
		$.ajax({
			// 가야할 서블릿 지정
			url : "boardfavoriteupdate.bizpoll",
			// 방식 지정 [GET | POST]
			type : "POST",
			// 타입 지정
			dataType : "JSON",
			// 쿼리스트링과 같은 =에 공백X     //data를 dataTpye가방에 담아 type방식으로 url로 보냄
			data : "bno=" + bno + "&sessionUser=" + sessionUser,
			//성공했을때	
			success : function(data) {
				if (data.flag == "1") {
					comment_list();
				} else if (data.flag == "0") {
				}
			},
			//실패했을떄
			error : function(data) {
				alert("System Error!!!");
			}
		});	
					
	});		
	
	//댓글 작성 Ajax	
	$(document).on("click", "#bdtail_registration_img", function(){	
		var bno = '<%=request.getAttribute("bno") %>';				
		var sessionUser = '<%=session.getAttribute("sid") %>';
		var replyComment = $("#bdtail_comment_write").val();
		$("#bdtail_comment_write").val("");
		if(replyComment == "") {
			alert("댓글을 입력하지 않았습니다.");
			$("#bdtail_comment_write").focus();
			return false;
		} else {
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
						comment_list();
						/* location.href = "boarddetail.bizpoll?bno=" + bno; */
					} else if (data.flag == "0") {
						alert("댓글 등록 실패");
					}
				},
				//실패했을떄
				error : function(data) {
					alert("System Error!!!");
				}
			});
		}
					
	});			
	
	//댓글 삭제 Ajax
	$(document).on("click", ".board_comment_delete", function(){
		var rno = $(this).attr("data_num");				
		 $.ajax({
			// 가야할 서블릿 지정
			url : "replydelete.bizpoll",
			// 방식 지정 [GET | POST]
			type : "POST",
			// 타입 지정
			dataType : "JSON",
			// 쿼리스트링과 같은 =에 공백X     //data를 dataTpye가방에 담아 type방식으로 url로 보냄
			data : "rno=" + rno,
			//성공했을때	
			success : function(data) {
				if (data.flag == "1") {
					comment_list();
				} else if (data.flag == "0") {
					alert("댓글 삭제 실패");
				}
			},
			//실패했을떄
			error : function(data) {
				alert("System Error!!!");
			}
		});
	});
	
	// 댓글 수정 버튼 클릭시 화면변경 소스
	$(document).on("click", ".board_comment_update", function(){
		var rno = $(this).attr("data_num");
		var text = $("div[data_num="+rno+"]");
		var reply_text = $("input[data_num=" + rno + "]").val();
		var reply_text_write = $("textarea[data_num=" + rno + "]");
		
		if($(text.first()).is(":visible")){
			text.first().css("display", "none");
			$("#command_line").css("display", "block");		
			$("#bdtail_comment_write").focus();		
		}else{
			$(".recommand_store_line").css("display", "none");
			$(".command_update_line").css("display", "none");
			$("#command_line").css("display", "none");
			text.first().css("display", "block");
			reply_text_write.first().val(reply_text);
			reply_text_write.first().focus();
		}
	});
	
	
	// 댓글 수정
	$(document).on("click", ".bdtail_update_img", function(){
		/* var bno = ${boardDetailList.bno}; */
		var rno = $(this).attr("data_num");
		var replyComment = $("textarea[data_num="+rno+"]").val();
		<%-- var sessionUser = '<%=session.getAttribute("sid") %>';
		alert(sessionuser); --%>
		
		$.ajax({
			// 가야할 서블릿 지정
			url : "replyupdate.bizpoll",
			// 방식 지정 [GET | POST]
			type : "POST",
			// 타입 지정
			dataType : "JSON",
			// 쿼리스트링과 같은 =에 공백X     //data를 dataTpye가방에 담아 type방식으로 url로 보냄
			data : "rno=" + rno + "&replyComment=" + replyComment,
			//성공했을때	
			success : function(data) {
				if (data.flag == "1") {
					comment_list();
					$("#command_line").css("display", "block");
				} else if (data.flag == "0") {
					alert("댓글 수정 실패");
				}
			},
			//실패했을떄
			error : function(data) {
				alert("System Error!!!");
			}
		});
		
	});
	
	// 답글 버튼 클릭시 화면변경 소스
	$(document).on("click", ".command_reply", function(){
		var rno = $(this).attr("data_num");
		var text = $("div[data_num="+rno+"]");
		var reply_text_write = $("textarea[data_num=" + rno + "]");
		
		if($(text.last()).is(":visible")){
			text.last().css("display", "none");
			$("#command_line").css("display", "block");
			$("#bdtail_comment_write").focus();		
		}else{
			$(".recommand_store_line").css("display", "none");
			$(".command_update_line").css("display", "none");
			$("#command_line").css("display", "none");
			text.last().css("display", "block");
			reply_text_write.last().focus();
		}
	});
	
	// 답글 등록
	$(document).on("click", ".recommand_write_img", function(){
		var bno = ${boardDetailList.bno};
		var rno = $(this).attr("data_num");
		var recomment = $("textarea[data_num="+rno+"]").last().val();
		var sessionUser = '<%=session.getAttribute("sid") %>';
		
		if(recomment == "") {
			alert("답글을 입력하지 않았습니다.");
			$("textarea[data_num="+rno+"]").last().focus();
			return false;
		} else {
			$.ajax({
				// 가야할 서블릿 지정
				url : "recommentstore.bizpoll",
				// 방식 지정 [GET | POST]
				type : "POST",
				// 타입 지정
				dataType : "JSON",
				// 쿼리스트링과 같은 =에 공백X     //data를 dataTpye가방에 담아 type방식으로 url로 보냄
				data : "bno=" + bno + "&rno=" + rno + "&recomment=" + recomment + "&sessionUser=" + sessionUser,
				//성공했을때	
				success : function(data) {
					if (data.flag == "1") {
						comment_list();
						$("#command_line").css("display", "block");
					} else if (data.flag == "0") {
						alert("답글 등록 실패");
					}
				},
				//실패했을떄
				error : function(data) {
					alert("System Error!!!");
				}
			});
		}		
	});
	
</script>

</head>
<body>
	<div id="bdetail_wrap">
		<div id="bdtail_header">
			<div id="bdtail_title">
				[${boardDetailList.category}] ${boardDetailList.title}
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
					<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardDetailList.regdate}"/>
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
		<div id="bdtail_file_download_wrap">
			<c:if test="${boardDetailList.filesize > 0}">
				<span id="bdtail_file_download__position">
					<span id="bdtail_file_download_fix">
						첨부파일 : 
					</span>
					<a href="boarddownload.bizpoll?bno=${boardDetailList.bno}" id="bdtail_file_download_btn">
						${boardDetailList.filename}
					</a>
				</span>
			</c:if>
		</div>
		<div id="bdtail_contents">
			${boardDetailList.content}
		</div>
		<div id="bdtail_comment_wrap">			
			<div id="commentList"></div>
			<div id="command_line">
			<c:choose>
				<c:when test="${empty sessionScope.loginUser}">
					<span id="nologin_commend_wirte">
						<span id="nologin_commend_wirte_btn">
							로그인
						</span>
						<span>
							후 댓글작성이 가능합니다.
						</span>
					</span>
					<form action="boarddetail.bizpoll" method="GET" name="bdreply_store"  id="bdreply_store">
						<input type="hidden" name="bno" id="bno"  value="${boardDetailList.bno}">
						<input type="hidden" name="hits" id="hits"  value="${boardDetailList.hits}">
						<textarea name="bdtail_comment_write" id="bdtail_comment_write" readonly></textarea>					
					</form>
					<span id="bdtail_registration">
						<a href="#" id="nologin_bdtail_registration_btn" class="bdtail_registration_btn_css">등록
							<img id="bdtail_registration_img" alt="bdtail_registration_img" src="image/up_boardwrite.png">
						</a>
					</span>
				</c:when>
				<c:otherwise>
					<span id="nologin_commend_wirte_btn" class="none_text">
							로그인
					</span>
					<form action="boarddetail.bizpoll" method="GET" name="bdreply_store"  id="bdreply_store">
						<textarea name="bdtail_comment_write" id="bdtail_comment_write" placeholder="댓글을 입력하세요."></textarea>					
						<input type="hidden" name="bno" id="bno"  value="${boardDetailList.bno}">
						<input type="hidden" name="hits" id="hits"  value="${boardDetailList.hits}">
					</form>
					<span id="bdtail_registration">
						<a href="#" id="bdtail_registration_btn" class="bdtail_registration_btn_css">등록
							<img id="bdtail_registration_img" alt="bdtail_registration_img" src="image/up_boardwrite.png">
						</a>
					</span>
				</c:otherwise>
			</c:choose>
			</div>			
		</div>
		<c:if test="${fn:trim(boardDetailList.pre_title) ne '이전글 없음'}">
			<div class="board_nexrPre_wrap">
				<span class="board_nextPre_tag nextPre_btn">
					<a href="boarddetail.bizpoll?bno=${boardDetailList.pre_article_bno}">
						이전글
					</a>
				</span>
				<span class="board_nextPre_tag nextPre_title">
					<a href="boarddetail.bizpoll?bno=${boardDetailList.pre_article_bno}">
						<span class="nextPre_title_fix">제목 : </span>
						[${boardDetailList.category}] ${boardDetailList.pre_title}
					</a>
				</span>
				<span class="board_nextPre_tag nextPre_writer">
					 작성자 : ${boardDetailList.pre_writer}
				</span>
				<span class="board_nextPre_tag nextPre_regdate">
					<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
					<fmt:formatDate value="${boardDetailList.pre_regdate}" pattern="yyyy-MM-dd" var="regdate2"/>					
					<c:if test="${today2 == regdate2}">
						작성일 : <fmt:formatDate pattern="MM-dd HH:mm" value="${boardDetailList.pre_regdate}"/>
					</c:if>
					<c:if test="${today2 != regdate2}">
						작성일 : <fmt:formatDate pattern="yyyy-MM-dd" value="${boardDetailList.pre_regdate}"/>
					</c:if>					 
				</span>
			</div>
		</c:if>		
		<c:if test="${fn:trim(boardDetailList.next_title) ne '다음글 없음'}">
			<div class="board_nexrPre_wrap">
				<span class="board_nextPre_tag nextPre_btn">
					<a href="boarddetail.bizpoll?bno=${boardDetailList.next_article_bno}">
						다음글
					</a>
				</span>
				<span class="board_nextPre_tag nextPre_title">
					<a href="boarddetail.bizpoll?bno=${boardDetailList.next_article_bno}">
						<span class="nextPre_title_fix">제목 : </span>
						[${boardDetailList.category}] ${boardDetailList.next_title}
					</a>
				</span>
				<span class="board_nextPre_tag nextPre_writer">
					 작성자 : ${boardDetailList.next_writer}
				</span>
				<span class="board_nextPre_tag nextPre_regdate">
					<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
					<fmt:formatDate value="${boardDetailList.next_regdate}" pattern="yyyy-MM-dd" var="regdate2"/>					
					<c:if test="${today2 == regdate2}">
						작성일 : <fmt:formatDate pattern="MM-dd HH:mm" value="${boardDetailList.next_regdate}"/>
					</c:if>
					<c:if test="${today2 != regdate2}">
						작성일 : <fmt:formatDate pattern="yyyy-MM-dd" value="${boardDetailList.next_regdate}"/>
					</c:if>					 
				</span>
			</div>
		</c:if>
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
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">			
						<span id="bdtail_write">
							<a href="#">글쓰기</a>
						</span>
					</c:when>
					<c:otherwise>
						<span id="bdtail_write">
							<a href="boardregisterview.bizpoll">글쓰기</a>
						</span>							
					</c:otherwise>
				</c:choose>	
				<span class="bdtail_share">|</span>
				<span id="bdtail_list">
					<a href="board.bizpoll">목록</a>
				</span>
			</span>
		</div>
	</div>	
	<c:if test="${!empty boardReply}">
		<div id="myboard_modal" class="board_modal">
			<div class="board_modal-content">
				<span class="delete_close">&times;</span>			
				<div id="delete_window_wrap">
					<div id="delete_window_text">
						  댓글이 달린 게시글은 삭제할수 없습니다.
					</div>
					<div id="delete_window_select">
						<a href="#" id="select_false" class="delete_selectbox delete_window_text">
							확인	
						</a>					
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${empty boardReply}">
		<div id="myboard_modal" class="board_modal">
			<div class="board_modal-content">
				<span class="delete_close">&times;</span>			
				<div id="delete_window_wrap">
					<div id="delete_window_text">
						  게시글을 삭제하시겠습니까?
					</div>
					<div id="delete_window_select">
						<a href="boarddelete.bizpoll?bno=${boardDetailList.bno}" id="select_true" class="delete_selectbox">
							확인	
						</a>
						<a href="#" id="select_false" class="delete_selectbox">
							취소
						</a>					
					</div>
				</div>
			</div>
		</div>
	</c:if>
	
	<script>
		
		// Get the board_modal
		var board_modal = document.getElementById("myboard_modal");

		// Get the button that opens the board_modal
		var btn_delete = document.getElementById("bdtail_btn_delete");
		var nologin_command_btn = document.getElementById("nologin_commend_wirte_btn");
		var bdtail_login_write = document.getElementById("bdtail_write");
		var sessionUser = '<%=session.getAttribute("sid") %>';
		
		// Get the <span> element that closes the board_modal
		var delete_span = document.getElementsByClassName("delete_close")[0];
		var delete_btn = document.getElementById("select_false");
		
		// When the user clicks the button, open the board_modal 
		btn_delete.onclick = function() {
			board_modal.style.display = "block";
		}	
		
		nologin_command_btn.onclick = function() {
			modal.style.display = "block";
		}
		if(sessionUser == null) {
			bdtail_login_write.onclick = function() {
				modal.style.display = "block";
			}		
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