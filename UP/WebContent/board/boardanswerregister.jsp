<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bdanswer_wrap{
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
	#bdanswer_title_wrap {
		margin: 0 10px;
		height: 32px;		
		padding-top: 5px;
		padding-bottom: 5px;
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
		position: relative;
	}
	#bdanswer_title {
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
	.bdanswer_header_fix {
		display: inline-block;
		width:120px;
		height: 32px;		
		line-height: 32px;
		padding-left: 20px;
		font-size: 12px;
		float: left;
	}
	#bdanswer_category {
		display: inline-block;
		width: 150px;
		height: 30px;
		padding: 5px;
		font-size: 13px;
	}
	.bdanswer_header_wrap {
		height: 32px;		
		padding-top: 5px;
		padding-bottom: 5px;
		border-bottom: 1px solid #ccc;
		margin: 0 10px;
	}
	
	#bdanswer_writer {
		display: inline-block;
		width: 150px;
		height: 16px;
		padding: 7px;
		font-size: 13px;
		border: none;
	}
	#bdanswer_content_wrap {
		height: 503px;
		width: 730px;
		padding-top: 10px;
		padding-bottom: 10px;
		border-bottom: 1px solid #ccc;
	}
	.bdanswer_content_class {
		width: 690px;
		font-size:13px;
		line-height: 16px;			
		padding: 0px 20px 0px 20px;
		border: none;
		outline:none;		
		resize: none;
	}
	#bdanswer_content1 {
		padding-top: 7px;
		height: 130px;
	}
	#bdanswer_content2 {
		padding-bottom: 7px;
		height: 356px;
		margin: 0 10px;
	}
	.bdanswer_btn_wrap {
		display: inline-block;
		width: 80px;
		height: 40px;
		font-size: 14px;
		line-height: 40px;
		text-align: center;
		margin: 10px 20px 10px 20px;
	}
	#bdanswer_cancle_wrap {
		border: 1px solid #ccc;
	}
	#bdanswer_cancle {
		display: inline-block;
		width: 80px;
		height: 40px;
		color: #555;
	}
	#bdanswer_store_wrap {
		border: 1px solid #e51130;
		background-color: #e51130;		
		float: right;
	}
	#bdanswer_store {
		display: inline-block;
		width: 80px;
		height: 40px;
		color: white;
	}
	#bdanswer_tail_wrap {
		margin: 0 auto;
		padding: 10px 0 20px;
	}
	#bdanswer_file_label_wrap {
		display: inline-block;
		height: 32px;
		position: relative;
		margin-right: 20px;
		width: 570px;
	}
	#bdanswer_file {
		display: none;
	}
	#bdanswer_file_label_title {
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
	#bdanswer_file_label {
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
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var bdanswer_category_value = "${boardAnswerView.category}";
		var bdanswer_title = $("#bdanswer_title");
		var bdanswer_category = $("#bdanswer_category");
		var bdanswer_content = $("#bdanswer_content");				

		$("#bdanswer_content2").focus();
		
		bdanswer_category.val(bdanswer_category_value).prop("selected", true);
		
		$(bdanswer_category).attr("disabled", "true");
				
		$("#bdanswer_store").on("click", function(){			
			if(bdanswer_title.val() == ""){
				alert("제목을 입력하지 않았습니다..");
				bdanswer_title.focus();
				return false;
			} else if (bdanswer_category.val() == "") {
				alert("카테고리를 선택하지 않았습니다.");
				bdanswer_category.focus();
				return false;
			} else if (bdanswer_content.val() == "") {
				alert("내용을 입력하지 않았습니다.");
				bdanswer_content.focus();
				return false;
			} else {
				$("#bdanswer_post").submit();
			}			
		});	
		
		$("#bdanswer_file").on("change", function(){
			var fileName = $(this).val();
			$("#bdanswer_file_label_title").text(fileName);
		});
	});

</script>
</head>
<body>
	<div id="bdanswer_wrap">
		<h1 class="title_r">Q & A</h1>
		<!-- 파일 다운로드하기 위해 form의 method는 POST 를 사용, enctype="multipart/form-data"속성 추가 -->
		<form action="boardanswerstore.bizpoll" method="POST" name="bdanswer_post" id="bdanswer_post" enctype="multipart/form-data">
			<input type="hidden" id="parent_bno" name="parent_bno" value="${boardAnswerView.bno}">
			<input type="hidden" id="parent_bnoup" name="parent_bnoup" value="${boardAnswerView.bnoup}">
			<div id="bdanswer_title_wrap" class="bdanswer_header_wrap">
				<span id="bdanswer_title_fix" class="bdanswer_header_fix">
					제 목 : 
				</span>
				<input type="text" name="bdanswer_title" id="bdanswer_title" value="RE : ${boardAnswerView.title}" readonly>
			</div>
			<div id="bdanswer_category_wrap" class="bdanswer_header_wrap">
				<span id="bdanswer_category_fix" class="bdanswer_header_fix">
					카테고리 : 
				</span>
				<select name="bdanswer_category" id="bdanswer_category">
					<option value>카테고리 선택</option>
					<option value="상품 문의">상품 문의</option>
					<option value="배송 문의">배송 문의</option>
					<option value="기타 문의">기타 문의</option>
				</select>
			</div>
			<div id="bdanswer_writer_wrap" class="bdanswer_header_wrap">
				<span id="bdanswer_writer_fix" class="bdanswer_header_fix">
					작성자 : 
				</span>
				<input type="text" id="bdanswer_writer"  name="bdanswer_writer"  value= "${sessionScope.loginUser.mid}" readonly>
			</div>
			<div id="bdanswer_file_wrap" class="bdanswer_header_wrap">
				<span id="bdanswer_file_fix" class="bdanswer_header_fix">
					첨부파일 : 
				</span>
				<span id="bdanswer_file_label_wrap">
					<span id= "bdanswer_file_label_title">
					</span>
					<input type="file" id="bdanswer_file"  name="bdanswer_file">		
					<label for="bdanswer_file" id="bdanswer_file_label">파일 선택</label>		
				</span>
			</div>
			<div id="bdanswer_content_wrap">
				<textarea name="bdanswer_content1" id="bdanswer_content1" class="bdanswer_content_class" readonly>${boardAnswerView.content}</textarea>
				<textarea name="bdanswer_content2" id="bdanswer_content2" class="bdanswer_content_class"></textarea>
			</div>
		</form>
		<div id="bdanswer_tail_wrap">
			<span id="bdanswer_cancle_wrap" class="bdanswer_btn_wrap">
				<a href="board.bizpoll" id="bdanswer_cancle" >취  소</a>
			</span>
			<span id="bdanswer_store_wrap" class="bdanswer_btn_wrap">
				<a href="#" id="bdanswer_store">등  록</a>
			</span>		
		</div>
	</div>
</body>
</html>