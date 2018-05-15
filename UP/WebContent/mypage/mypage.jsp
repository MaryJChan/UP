<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>	
	
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

body, input, button, textarea {
	font-size: 12px;
	line-height: 1.3em;
}

a {
	text-decoration: none;
}

li {
	list-style: none;
}

#mypage_area {
	margin: 50px auto 100px auto;
	width: 900px;
	padding: 20px;
}
#mypage_title {
	font-size: 36px;
	line-height: 1.4em;
	font-weight: 900;
	color: #d60013;
	letter-spacing: -1px;
	padding-top: 10px;
	cursor: pointer;
}
#mypage_top {
	height: 255px;
}
#mypage_cours {
	width: 242px;
	height: 237px;
	padding: 16px 0 0 20px;
	border: 1px solid #ccc;
	float: left;
}
#mypage_info {
	width: 614px;
	height: 253px;
	border: 1px solid #ccc;
	background-color: #fafafa;
	float: right;
}
.nb_blue {
	color: #0099cc;
}
.membership_level {
	height: 116px;
	padding: 10px 0;
}
.CR_util li {
	float: left;
	font-size: 12px;
	line-height: 15px;
	margin-bottom: 3px;
}
.Cr_Tit {
	width: 150px;
	margin-left: 5px;
	color: #666;
}
.Cr_Txt a {
	color: #0099cc;
}

#mypage_info dl {
	float: left;
	width: 110px;
	padding: 0 20px;
	margin-top: 25px;
	height: 200px;
	border-right: 1px solid #eaeaea;
}
#mypage_info dt {
	font-size: 14px;
	color: #333;
	font-weight: bold;
	padding-bottom: 10px;
}
#mypage_info dd	{
	margin-bottom: 7px;
}
#mypage_info dd a {
	display: block;
	width: 120px;
	height: 13px;
	color: #A5A5A5;
	font-size: 12px;
}
.mypage_info_dl_last {
	border-right: none!important;
}
#mypage_body {
	margin-top: 50px;
}
#mypage_body_box01 {
	border: 5px solid #dadada;
	position: relative;
	zoom: 1;
	height: 136px;
}
#box01_info {
	padding: 20px 30px 20px 20px;
	display: inline-block;
}
#box01_info_fix {
	font-size: 16px;
	font-weight: bold;
	letter-spacing: -1px;
	display: block;
}
#box01_info_fix_btn{
	display: block;
	padding: 10px 0px 30px 5px;
	width: 84px;
}
#box01_info_fix_btn a {
	border: 1px solid #0099cc;
	display: block;
	width: 84px;
	letter-spacing: -1px;
	color: #0099cc;
	text-align: center;
	padding: 4px 0;
	border-radius: 1px;
	font-weight: bold;
}
.other_input {
	width: 690px;
	float: right;
	padding-right: 20px;
}
.other_input tr {
	border-bottom: 1px solid #ccc;
	display: inline-block;
}
.other_input .vc {
	padding-top: 5px;
}
.other_input th {
	text-align: left;
	font-weight: nomal;
	padding: 11px 0 0 7px;
	vertical-align: center;
	font-size: 12px;
	width: 140px;
}
.other_input td {
	text-align: left;
	font-weight: nomal;
	padding: 5px 7px 5px 0;
	font-size: 12px;
	width: 517px;
}
#mypage_info a:hover {
	color: #0099cc;
}
.CR_Tit {
	width: 150px;	
}
.CR_Txt a {
	color: #0099cc;
}


#memberUpdate_check_area {
	width: 100%;
	margin-top: 50px;
	display: none;
}

.memberCheck_box {
	margin-top: 15px;
	border: 10px solid #ccc;	
	padding: 35px 30px;
}
#myinfo_modify {
	border: 1px solid #ccc;
	border-left: 0px;
	border-right: 0px;
	padding: 30px 0;
	margin: 40px 0 30px 0;
}
.mb8 {
	margin-bottom: 8px;
}
.myinfo_modify_detail {
	display: inline-block;
	width: 100px;
	font-size: 11px;
	font-weight: bold;
}
#myinfo_modify input {
	width: 250px;
	height: 23px;
	line-height: 23px;
	border: 1px solid #c5c5c5;
	padding: 0 7px;
	vertical-align: middle;
}
#memSelectID {
	background-color: #f3f3f3;
}
</style>
<script type="text/javascript">
	$(document).on("click", "#box01_info_fix_btn", function(){
		$("#mypage_body"	).css("display", "none");	
		$("#memberUpdate_check_area"	).css("display", "block");	
	});
	
	$(document).on("click", "#memberUpdate_btn", function(){
		$("#mypage_body"	).css("display", "none");	
		$("#memberUpdate_check_area"	).css("display", "block");	
	});
	$(document).on("click", "#mypage_title", function(){
		location.reload();
	});
	
	$(document).on("click", "#memberCheck_btn", function(){
		var mid = $("#memSelectID");
		var mpw = $("#memSelectPW");
		
		if(mpw.val() == ""){
			alert("비밀번호를 입력하지 않았습니다.");
			mpw.focus();
			return false;
		} else {
			$.ajax({
				// 가야할 서블릿 지정
				url : "mypageMemCheckAjax.bizpoll",
				// 방식 지정 [GET | POST]
				type : "POST",
				// 타입 지정
				dataType : "JSON",
				// 쿼리스트링과 같은 =에 공백X     //data를 dataTpye가방에 담아 type방식으로 url로 보냄
				data : "mid=" + mid.val() + "&mpw=" + mpw.val(),
				//성공했을때	
				success : function(data) {
					if (data.flag == "1") {
						location.href="memberUpdateView.bizpoll?mid=" + mid.val();
					} else if (data.flag == "0") {
						alert("비밀번호가 일치하지 않습니다.");
						mpw.focus();
						return false;
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
	<div id="mypage_wrap">
		<div id="mypage_area">
			<h2 id="mypage_title">MY PAGE</h2>
			<div id="mypage_top">
				<div id="mypage_cours">
					<p>
						<strong class="nb_blue"> <span>${memSelect.mname}</span>님
						</strong> (<span>${memSelect.mid}</span>)
					</p>
					<div class="membership_level">
						<span> <img>
						</span>
					</div>
					<ul class="CR_util">
						<li class="CR_Tit">· 회원등급</li>
						<li class="CR_Txt"><a href="#">${memSelect.mgrade}</a></li>
						<li class="CR_Tit">· 온라인 쿠폰</li>
						<li class="CR_Txt"><a href="#">100 장</a></li>
						<li class="CR_Tit">· 통합 마일리지</li>
						<li class="CR_Txt"><a href="#">조회</a></li>
					</ul>
				</div>
				<div id="mypage_info">
					<dl>
						<dt>쇼핑 내역</dt>
						<dd><a href="#">주문/배송 조회</a></dd>
						<dd><a href="#">취소/교환/반품</a></dd>
						<dd><a href="#">증명 서류 발급</a></dd>
					</dl>
					<dl>
						<dt>쇼핑 혜택</dt>
						<dd><a href="#">온라인 회원등급 혜택</a></dd>
						<dd><a href="#">온라인 쿠폰</a></dd>
						<dd><a href="#">회원 마일리지 조회</a></dd>
					</dl>
					<dl>
						<dt>쇼핑 다이어리</dt>
						<dd><a href="#">관심 상품</a></dd>
						<dd><a href="#">오늘 본 상품</a></dd>
						<dd><a href="#">상품 리뷰</a></dd>
						<dd><a href="#">상품 문의 / 1:1 문의</a></dd>
						<dd><a href="#">A/S 처리 현황</a></dd>
					</dl>
					<dl class="mypage_info_dl_last">
						<dt>회원 정보</dt>
						<dd><a href="#" id="memberUpdate_btn">회원정보 수정</a></dd>
						<dd><a href="#">리노베이션 프로젝트</a></dd>
						<dd><a href="#">배송지 주소록</a></dd>
						<dd><a href="#">환불계좌관리</a></dd>
						<dd><a href="#">회원 탈퇴</a></dd>
					</dl>
				</div>
			</div>
			<div id="mypage_body">
				<div id="mypage_body_box01">
					<span id="box01_info">
						<span id="box01_info_fix">나의 회원정보</span>
						<span id="box01_info_fix_btn"><a href="#">회원정보 수정</a></span>
					</span>
					<table class="other_input">
						<tbody>
							<tr>
								<th class="vc">주소</th>
								<td>[${memSelect.mpostcode}] ${memSelect.madd}</td>
							</tr>
							<tr>
								<th class="vc">휴대 전화번호</th>
								<td>${memSelect.mphone}</td>
							</tr>
							<tr>
								<th class="vc">E-mail 주소</th>
								<td>${memSelect.memail}</td>
							</tr>
							<tr>
								<th class="vc">기념일</th>
								<td>8월 15일</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div id="memberUpdate_check_area">
				<h3 class="mt50">회원정보 수정</h3>
				<div class="memberCheck_box">
					<h3>고객님의 소중한 개인정보를 위해 비밀번호를 입력해 주세요.</h3>
					<div id="myinfo_modify">
						<form action="" name=""  id="" method="POST">
							<p class="mb8">
								<span class="myinfo_modify_detail">ID</span>
								<input type="text" value="${memSelect.mid}" id="memSelectID" readonly>
							</p>
							<p>
								<span class="myinfo_modify_detail">PASSWORD</span>
								<input type="text"  id="memSelectPW">
							</p>							
						</form>						
					</div>
					<div>
						<p>
							<a href="#">
								<img id="memberCheck_btn" src="image/mypage/id_check.png">
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../include/footer.jsp" %>