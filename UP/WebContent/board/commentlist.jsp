<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl태그 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="bdtail_comment_count_wrap">
		<span id="comment_count_fix">
			댓글 : 
		</span>
		<span id="comment_count">
			${boardReply.size()}
		</span>
	</div>	
	<c:if test="${empty boardReply}">
		<input type="hidden" value="${boardReply}" name="boardReply">
		<div class="commend_registration_wrap">					
			<div class="command_registration_contents" id="none_reply">
				등록된 댓글이 없습니다. 댓글을 등록해주세요.
			</div>
		</div>
	</c:if>
	<c:forEach items="${boardReply}" var="reply">
		<div class="commend_registration_wrap">
			<div class="command_registration_title_wrap">
				<a href="#" class="commend_user">
					${reply.sessionUser}
				</a>
				<span class="command_date">
					<fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${reply.regdate}"/>
				</span>
				<a href="#" class="command_reply">
					답글
				</a>
				<c:if test="${fn:trim(sessionScope.loginUser.mid) eq fn:trim(reply.sessionUser)}">	
					<span id="board_comment_option">
						<a href="#" class="board_comment_update" data_num="${reply.rno}">
							수정
						</a>
						<span>|</span>
						<a href="#" class="board_comment_delete" data_num="${reply.rno}">
							삭제
						</a>
					</span>
				</c:if>	
			</div>						
			<div class="command_registration_contents">
				<input type="text" value="${reply.replyComment}" name="reply_text" class="reply_text" data_num="${reply.rno}" readonly>
			</div>
		</div>	
		<div class="command_update_line"  data_num="${reply.rno}">
			<div class="command_update_line_position">
				<form action="boarddetail.bizpoll" method="GET" name="bdreply_update"  class="bdreply_update">
					<textarea name="bdtail_comment_update" class="bdtail_reply_write"   data_num="${reply.rno}"></textarea>					
					<input type="hidden" name="rno" class="rno"  value="${reply.rno}">
				</form>
				<span class="bdtail_update_registration">
					<a href="#" class="bdtail_update_btn_css" >등록
						<img class="bdtail_update_img" alt="bdtail_registration_img" src="image/up_boardwrite.png" data_num="${reply.rno}">
					</a>
				</span>	
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
</body>
</html>