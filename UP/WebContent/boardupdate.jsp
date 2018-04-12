<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bdupdate_wrap{
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
	#bdupdate_title_wrap {
		width: 750px;
		height: 32px;		
		padding-top: 5px;
		padding-bottom: 5px;
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
		position: relative;
	}
	#bdupdate_title_fix {
		display: inline-block;
		width:120px;
		height: 32px;		
		line-height: 32px;
		padding-left: 20px;
		font-size: 12px;
		float: left;
	}
	#bdupdate_title {
		display: inline-block;
		width: 250px;
		height: 20px;
		font-size: 13px;
		border: 0;
		position: absolute;
		top: 10px;
		outline: none;
	}
	#bdupdate_category_wrap {
		width: 750px;
		height: 32px;		
		padding-top: 5px;
		padding-bottom: 5px;
		border-bottom: 1px solid #ccc;
	}
	#bdupdate_category_fix {
		display: inline-block;
		width:120px;
		height: 32px;		
		line-height: 32px;
		padding-left: 20px;
		font-size: 12px;
		float: left;
	}
	#bdupdate_category {
		display: inline-block;
		width: 150px;
		height: 30px;
		padding: 5px;
		font-size: 13px;
	}
	#bdupdate_writer_wrap {
		width: 750px;
		height: 32px;		
		padding-top: 5px;
		padding-bottom: 5px;
		border-bottom: 1px solid #ccc;
	}
	#bdupdate_writer_fix {
		display: inline-block;
		width:120px;
		height: 32px;		
		line-height: 32px;
		padding-left: 20px;
		font-size: 12px;
		float: left;
	}
	#bdupdate_writer {
		display: inline-block;
		width: 150px;
		height: 16px;
		padding: 7px;
		font-size: 13px;
		border: none;
	}
	#bdupdate_content_wrap {
		height: 503px;
		width: 750px;		
		padding-top: 10px;
		padding-bottom: 10px;
		border-bottom: 1px solid #ccc;
	}
	#bdupdate_content {
		width: 710px;
		font-size:13px;
		line-height: 16px;
		height: 486px;
		padding: 7px 20px 7px 20px;
		border: none;
		outline:none;
	}
	.bdupdate_btn_wrap {
		display: inline-block;
		width: 80px;
		height: 40px;
		font-size: 14px;
		line-height: 40px;
		text-align: center;
		margin: 10px 20px 10px 20px;
	}
	#bdupdate_cancle_wrap {
		border: 1px solid #ccc;
	}
	#bdupdate_cancle {
		display: inline-block;
		width: 80px;
		height: 40px;
		color: #555;
	}
	#bdupdate_store_wrap {
		border: 1px solid #e51130;
		background-color: #e51130;		
		float: right;
	}
	#bdupdate_store {
		display: inline-block;
		width: 80px;
		height: 40px;
		color: white;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#bdupdate_title").val("${boardUpdate.title}");
		$("#bdupdate_content").val("${boardUpdate.content}");
		$("#bdupdate_store").on("click", function(){
			$("#bdupdate_post").submit();
		});
	});
</script>
</head>
<body>
	<div id="bdupdate_wrap">
		<h1 class="title_r">Q & A</h1>
		<form action="boardupdate.bizpoll" method="POST" name="bdupdate_post" id="bdupdate_post">
			<input type="hidden" name="bdupdate_bno" id="bdupdate_bno" value="${boardUpdate.bno}">
			<div id="bdupdate_title_wrap">
				<span id="bdupdate_title_fix">
					제 목 : 
				</span>
				<input type="text" name="bdupdate_title" id="bdupdate_title" placeholder="제목을 입력하세요."}>
			</div>
			<div id="bdupdate_category_wrap">
				<span id="bdupdate_category_fix">
					카테고리 : 
				</span>
				<select name="bdupdate_category" id="bdupdate_category">
					<option value>카테고리 선택</option>
					<option value="상품 문의">상품 문의</option>
					<option value="배송 문의">배송 문의택</option>
					<option value="기타 문의">기타 문의</option>
				</select>
			</div>
			<div id="bdupdate_writer_wrap">
				<span id="bdupdate_writer_fix">
					작성자 : 
				</span>
				<span id="bdupdate_writer">
					${sessionScope.loginUser.mid}
				</span>
			</div>
			<div id="bdupdate_content_wrap">
				<textarea name="bdupdate_content" id="bdupdate_content" placeholder="내용을 입력하세요."></textarea>
			</div>
		</form>
		<span id="bdupdate_cancle_wrap" class="bdupdate_btn_wrap">
			<a href="board.bizpoll" id="bdupdate_cancle" >취  소</a>
		</span>
		<span id="bdupdate_store_wrap" class="bdupdate_btn_wrap">
			<a href="#" id="bdupdate_store">등  록</a>
		</span>
	</div>
</body>
</html>