<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bdregister_wrap{
		width: 750px;
		margin: 0 auto;
	}
	.title_r {
		line-height: 1.4em;
		font-weight: bold;
		color: #d60013;
		font-family: Tahoma, Helvetica;
		letter-spacing: -1px;
		padding-top: 100px;
		padding-bottom: 30px;		
		text-align: center;
	}
	#bdregister_title_wrap {
		width: 750px;
		height: 32px;		
		padding-top: 10px;
		padding-bottom: 10px;
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
	}
	#bdregister_title_fix {
		display: inline-block;
		width:120px;
		height: 32px;		
		line-height: 32px;
		padding-left: 20px;
		font-size: 14px;
	}
	#bdregister_title {
		margin-right: 20px;
		display: inline-block;
		width: 574px;
		height: 16px;
		float: right;
		padding: 7px;
		font-size: 13px;
	}
	#bdregister_content_wrap {
		height: 503px;
		width: 750px;		
		padding-top: 10px;
		padding-bottom: 10px;
		border-bottom: 1px solid #ccc;
	}
	#bdregister_content_fix {
		display: inline-block;
		width:120px;
		height: 32px;		
		line-height: 32px;
		padding-left: 20px;
		font-size: 14px;
	}
	#bdregister_content {
		margin-right: 20px;
		width: 574px;
		font-size:13px;
		line-height: 16px;
		height: 486px;
		float: right;
		padding: 7px;
	}
	.bdregister_btn_wrap {
		display: inline-block;
		width: 80px;
		height: 40px;
		font-size: 14px;
		line-height: 40px;
		text-align: center;
		margin: 10px 20px 10px 20px;
	}
	#bdregister_cancle_wrap {
		border: 1px solid #ccc;
	}
	#bdregister_cancle {
		display: inline-block;
		width: 80px;
		height: 40px;
		color: #555;
	}
	#bdregister_store_wrap {
		border: 1px solid #e51130;
		background-color: #e51130;		
		float: right;
	}
	#bdregister_store {
		display: inline-block;
		width: 80px;
		height: 40px;
		color: white;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#bdregister_title").val("");
		$("#bdregister_content").val("");
		$("#bdregister_store").on("click", function(){
			$("#bdregister_post").submit();
		});
	});
</script>
</head>
<body>
	<div id="bdregister_wrap">
		<h1 class="title_r">게시글 작성</h1>
		<form action="boardregisterstore.bizpoll" method="POST" name="bdregister_post" id="bdregister_post">
			<div id="bdregister_title_wrap">
				<span id="bdregister_title_fix">
					제 목 : 
				</span>
				<textarea name="bdregister_title" id="bdregister_title"></textarea>
			</div>
			<div id="bdregister_content_wrap">
				<span id="bdregister_content_fix">
					내 용 : 
				</span>
				<textarea name="bdregister_content" id="bdregister_content"></textarea>
			</div>
		</form>
		<span id="bdregister_cancle_wrap" class="bdregister_btn_wrap">
			<a href="board.bizpoll" id="bdregister_cancle" >취  소</a>
		</span>
		<span id="bdregister_store_wrap" class="bdregister_btn_wrap">
			<a href="#" id="bdregister_store">등  록</a>
		</span>		
	</div>
</body>
</html>