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
		padding-top: 70px;
		padding-bottom: 30px;		
		text-align: center;
	}
	#bdregister_title_wrap {
		width: 750px;
		height: 32px;		
		padding-top: 5px;
		padding-bottom: 5px;
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
		position: relative;
	}
	#bdregister_title_fix {
		display: inline-block;
		width:120px;
		height: 32px;		
		line-height: 32px;
		padding-left: 20px;
		font-size: 12px;
		float: left;
	}
	#bdregister_title {
		display: inline-block;
		width: 236px;
		height: 20px;
		font-size: 13px;
		border: 0;
		position: absolute;
		top: 4px;
		outline: none;
		padding: 7px;
	}
	#bdregister_category_wrap {
		width: 750px;
		height: 32px;		
		padding-top: 5px;
		padding-bottom: 5px;
		border-bottom: 1px solid #ccc;
	}
	#bdregister_category_fix {
		display: inline-block;
		width:120px;
		height: 32px;		
		line-height: 32px;
		padding-left: 20px;
		font-size: 12px;
		float: left;
	}
	#bdregister_category {
		display: inline-block;
		width: 150px;
		height: 30px;
		padding: 5px;
		font-size: 13px;
	}
	#bdregister_writer_wrap {
		width: 750px;
		height: 32px;		
		padding-top: 5px;
		padding-bottom: 5px;
		border-bottom: 1px solid #ccc;
	}
	#bdregister_writer_fix {
		display: inline-block;
		width:120px;
		height: 32px;		
		line-height: 32px;
		padding-left: 20px;
		font-size: 12px;
		float: left;
	}
	#bdregister_writer {
		display: inline-block;
		width: 150px;
		height: 16px;
		padding: 7px;
		font-size: 13px;
		border: none;
	}
	#bdregister_content_wrap {
		height: 503px;
		width: 750px;		
		padding-top: 10px;
		padding-bottom: 10px;
		border-bottom: 1px solid #ccc;
	}
	#bdregister_content {
		width: 710px;
		font-size:13px;
		line-height: 16px;
		height: 486px;
		padding: 7px 20px 7px 20px;
		border: none;
		outline:none;
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
	#bdregister_tail_wrap {
		padding-bottom: 30px;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#bdregister_title").focus();
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
		<h1 class="title_r">Q & A</h1>
		<form action="boardregisterstore.bizpoll" method="POST" name="bdregister_post" id="bdregister_post">
			<div id="bdregister_title_wrap">
				<span id="bdregister_title_fix">
					제 목 : 
				</span>
				<input type="text" name="bdregister_title" id="bdregister_title" placeholder="제목을 입력하세요.">
			</div>
			<div id="bdregister_category_wrap">
				<span id="bdregister_category_fix">
					카테고리 : 
				</span>
				<select name="bdregister_category" id="bdregister_category">
					<option value>카테고리 선택</option>
					<option value="상품 문의">상품 문의</option>
					<option value="배송 문의">배송 문의택</option>
					<option value="기타 문의">기타 문의</option>
				</select>
			</div>
			<div id="bdregister_writer_wrap">
				<span id="bdregister_writer_fix">
					작성자 : 
				</span>
				<span id="bdregister_writer">
					${sessionScope.loginUser.mid}
				</span>
			</div>
			<div id="bdregister_content_wrap">
				<textarea name="bdregister_content" id="bdregister_content" placeholder="내용을 입력하세요."></textarea>
			</div>
		</form>
		<div id="bdregister_tail_wrap">
			<span id="bdregister_cancle_wrap" class="bdregister_btn_wrap">
				<a href="board.bizpoll" id="bdregister_cancle" >취  소</a>
			</span>
			<span id="bdregister_store_wrap" class="bdregister_btn_wrap">
				<a href="#" id="bdregister_store">등  록</a>
			</span>		
		</div>
	</div>
</body>
</html>