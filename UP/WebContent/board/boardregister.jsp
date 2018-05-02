<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bdregister_wrap{
		width: 750px;
		margin: 100px auto;
		box-shadow: 0px 0px 5px #d8d8d8;
	}
	.title_r {
		line-height: 1.4em;
		font-weight: bold;
		color: #d60013;
		font-family: Tahoma, Helvetica;
		letter-spacing: -1px;
		padding-top: 30px;
		padding-bottom: 30px;		
		text-align: center;
		margin: 0 10px;
	}
	#bdregister_title_wrap {
		border-top: 1px solid #ccc;
		position: relative;
	}
	#bdregister_title {
		display: inline-block;
		width: 576px;
		height: 20px;
		font-size: 13px;
		border: 0;
		position: absolute;
		top: 4px;
		outline: none;
		padding: 7px;
	}
	.bdregister_header_fix {
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
	.bdregister_header_wrap {
		height: 32px;		
		padding-top: 5px;
		padding-bottom: 5px;
		border-bottom: 1px solid #ccc;
		margin: 0 10px;
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
		width: 730px;
		padding-top: 10px;
		padding-bottom: 10px;
		border-bottom: 1px solid #ccc;
	}
	#bdregister_content {
		width: 690px;
		font-size:13px;
		line-height: 16px;
		height: 486px;
		padding: 7px 20px 7px 20px;
		border: none;
		outline:none;
		margin: 0 10px;
		resize: none;
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
		margin: 0 auto;
		padding: 10px 0 20px;
	}
	#bdregister_file_label_wrap {
		display: inline-block;
		height: 32px;
		position: relative;
		margin-right: 20px;
		width: 570px;
	}
	#bdregister_file {
		display: none;
	}
	#bdregister_file_label_title {
		display: inline-block;
		padding: 7px;
		width: 473px;
		height: 20px;
		line-height: 20px;
		position: absolute;
		top: -1px;
		left: 0px;
		box-shadow: 0px 0px 5px #d8d8d8;
	}
	#bdregister_file_label {
		padding: 7px 5px;
		width: 65px;
		height: 20px;
		display: inline-block; 
		cursor: pointer;
		text-align: center;
		line-height: 20px;
		box-shadow: 0px 0px 5px #d8d8d8;
		position: absolute;
		right: 0;
		top: -1px;
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
	.register_modal-content {
		background-color: #fefefe;
		margin: auto;
		padding: 20px;
		border: 1px solid #888;
		width: 300px;
		height: 250px;
	}	
	/* The Close Button */
	.register_close {
		color: #aaaaaa;
		float: right;
		font-size: 28px;
		font-weight: bold;
		cursor: pointer;
	}	
	.register_close:hover, .register_close:focus {
		color: #000;
		text-decoration: none;
		cursor: pointer;
	}
	#register_window_text {
		height: 180px;
		line-height: 210px;
		color: #666;
		text-align: center;
		font-size: 16px;
	}
	#register_window_select {
		padding-top: 10px;
		height: 32px;
	}
	#select_false {
		border: 1px solid #ccc;
		display: inline-block;
		margin: 0 124px!important;
		text-align: center;
		width: 50px;
		height: 30px;
		line-height: 30px;
		font-size: 14px;
	}
	
	
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#bdregister_title").focus();
		
		var bdregister_title = $("#bdregister_title");
		var bdregister_category = $("#bdregister_category");
		var bdregister_content = $("#bdregister_content");
				
		$("#bdregister_store").on("click", function(){			
			if(bdregister_title.val() == ""){
				$("#register_window_text").text("제목을 입력하지 않았습니다.");
				bdregister_title.focus();
				$("#myboard_modal").css("display", "block");
			} else if (bdregister_category.val() == "") {
				$("#register_window_text").text("카테고리를 선택하지 않았습니다.");
				bdregister_category.focus();
				$("#myboard_modal").css("display", "block");
			} else if (bdregister_content.val() == "") {
				$("#register_window_text").text("내용을 입력하지 않았습니다.");
				bdregister_content.focus();
				$("#myboard_modal").css("display", "block");
			} else {
				$("#bdregister_post").submit();
			}			
		});
		
		$("#bdregister_file").on("change", function(){
			var fileName = $(this).val();
			$("#bdregister_file_label_title").text(fileName);
		});
	});
</script>
</head>
<body>
	<div id="bdregister_wrap">
		<h1 class="title_r">Q & A</h1>
		<!-- 파일 다운로드하기 위해 form의 method는 POST 를 사용, enctype="multipart/form-data"속성 추가 -->
		<form action="boardregister.bizpoll" method="POST" name="bdregister_post" id="bdregister_post" enctype="multipart/form-data">
			<div id="bdregister_title_wrap" class="bdregister_header_wrap">
				<span id="bdregister_title_fix" class="bdregister_header_fix">
					제 목 : 
				</span>
				<input type="text" name="bdregister_title" id="bdregister_title" placeholder="제목을 입력하세요.">
			</div>
			<div id="bdregister_category_wrap" class="bdregister_header_wrap">
				<span id="bdregister_category_fix" class="bdregister_header_fix">
					카테고리 : 
				</span>
				<select name="bdregister_category" id="bdregister_category">
					<option value>카테고리 선택</option>
					<option value="상품 문의">상품 문의</option>
					<option value="배송 문의">배송 문의</option>
					<option value="기타 문의">기타 문의</option>
				</select>
			</div>
			<div id="bdregister_writer_wrap" class="bdregister_header_wrap">
				<span id="bdregister_writer_fix" class="bdregister_header_fix">
					작성자 : 
				</span>
				<input type="text" id="bdregister_writer"  name="bdregister_writer"  value= "${sessionScope.loginUser.mid}" readonly>
			</div>
			<div id="bdregister_file_wrap" class="bdregister_header_wrap">
				<span id="bdregister_file_fix" class="bdregister_header_fix">
					첨부파일 : 
				</span>
				<span id="bdregister_file_label_wrap">
					<span id= "bdregister_file_label_title">
					</span>
					<input type="file" id="bdregister_file"  name="bdregister_file">		
					<label for="bdregister_file" id="bdregister_file_label">파일 선택</label>		
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
	<div id="myboard_modal" class="board_modal">
		<div class="register_modal-content">
			<span class="register_close">&times;</span>			
			<div id="register_window_wrap">
				<div id="register_window_text">
				</div>
				<div id="register_window_select">
					<a href="#" id="select_false">
						확인	
					</a>					
				</div>
			</div>
		</div>
	</div>
	<script>		
		// Get the board_modal
		var board_modal = document.getElementById("myboard_modal");
		
		// Get the <span> element that closes the board_modal
		var register_btn = document.getElementById("select_false");
		var register_close = document.getElementsByClassName("register_close")[0];
		
		// When the user clicks on <span> (x), close the board_modal
		register_btn.onclick = function() {
			board_modal.style.display = "none";
		}
		register_close.onclick = function() {
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
<%@ include file="../include/footer.jsp" %>