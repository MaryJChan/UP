<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>
   
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
		padding: 15px 0;
		border-bottom: 1px solid #ccc;
		background-color: #f4f4f4;
	}
	#bdtail_comment_write {
		width: 660px;
		height: 50px;
		margin-left: 10px;		
		border: 1px solid #EDEDED;
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
		padding: 0px 10px 10px 10px;
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
	#command_line {
		margin-top: 15px;
	}
</style>

 <script type="text/javascript">	
 
</script>

</head>
<body>
	<div id="bdetail_wrap">
		<div id="bdtail_header">
			<div id="bdtail_title">
				안녕하세용
			</div>			
		</div>
		<div id="bdtail_header2">
			<div id="bdtail_header3">
				<span class="user_fix">
					Name : 
				</span>
				<span id="bdtail_user">
					<a href="#">dhfjswl3</a>
				</span>
			</div>			
			<span id="bdtail_date_hits_wrap">
				<span id="bdtail_hits_wrap">
					<span class="hits_fix">
						Hits : 
					</span>
					<span id="bdtail_hits">
						5
					</span>
				</span>	
				<span class="date_fix">
					Date : 
				</span>
				<span id="bdtail_date">
					2018-04-10		
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
			sdalkfhsalkfhsdlakfhsadfhsad;hadflsakdhf;kfhsa;d
		</div>
		<div id="bdtail_comment_wrap">
			<div class="commend_registration_wrap">
				<div class="command_registration_title_wrap">
					<a href="#" class="commend_user">
						dddd
					</a>
					<span class="command_date">
						2018-04-10 14:20
					</span>
					<a href="#" class="command_reply">
						답글
					</a>
				</div>
				<div class="command_registration_contents">
					좋네용
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
			<div id="command_line">
				<form action="" method="" name=""  id="">
					<textarea name="bdtail_comment_write" id="bdtail_comment_write"></textarea>
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
				<span id="bdtail_">
					<a href="#">수정</a>
				</span>
				<span class="bdtail_share">|</span>
				<span id="bdtail_delete">
					<a href="#">삭제</a>
				</span>
			</span>
			<span id="bdtail_footer2">			
				<span id="bdtail_write">
					<a href="#">글쓰기</a>
				</span>
				<span class="bdtail_share">|</span>
				<span id="bdtail_list">
					<a href="#">목록</a>
				</span>
			</span>
		</div>
	</div>
</body>
</html>