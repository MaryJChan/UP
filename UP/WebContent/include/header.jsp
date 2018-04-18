<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- jstl태그 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 

<!--  -->
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
/* font-family: 'Nanum Gothic', serif; */
* {
	padding: 0;
	margin: 0;
}

ul {
	list-style-type: none;
}

body, input, button, textarea {
	font-size: 12px;
	line-height: 1.3ec;
	font-family: 'Nanum Gothic', serif;
	color: #333;
}

a {
	text-decoration: none;
}

hr {
	display: none;
}

.header {
	position: relative;
	width: 100%;
	height: 91px;
	border-bottom: 1px solid #dfdfdf;
	z-index: 10;
}

.top_color {
	width: 100%;
	height: 34px;
	background-color: #dfdfdf;
}

.top_area {
	width: 980px;
	height: 28px;
	margin: 0 auto;
	clear: both;
}

.top_menu {
	position: relative;
	width: 980px;
	height: 27px;
	display: block;
	float: left;
	z-index: 1;
	margin: 0 auto;
	padding-top: 5px;
}

.top_menu>li {
	height: 22px;
	float: left;
	line-height: 22px;
	vertical-align: middle;
	display: block;
	margin-right: 2px;
}

.icon_korea {
	width: 26px;
	height: 18px;
	float: left;
	margin-top: 2px;
	display: inline-block;
	background: url('image/KOREA.png') 0 0 no-repeat;
	text-indent: -10000px;
}

.icon_store {
	height: 18px;
	font-size: 10px;
	font-weight: bold;
	background: url('image/icon_map.png') 0 0 no-repeat;
	background-size: 18px 100%;
	display: inline-block;
	margin-top: 2px;
	padding-left: 20px;
	color: #333;
}

.top_menu .pipe {
	display: inline-block;
	margin: 0 5px 0 10px;
	font-size: 11px;
}

.se_top_color {
	width: 100%;
	height: 57px;
}

.top_con {
	width: 980px;
	height: 43px;
	margin: 0 auto;
	padding: 7.5px 0 6.5px 0;
	position: relative;
}

.logo {
	width: 65px;
	height: 43px;
	float: left;
	margin-right: 25px;
	line-height: 43px;
}

.logo>a {
	color: red !important;
	text-decoration: none;
	font-style: italic;
	font-weight: bold;
}

.gnb_area {
	width: auto;
	height: 24px;
	float: left;
	display: block;
	padding-top: 10px;
}

.gnb {
	width: auto;
	height: 39px;
	float: left;
}

.gnb>li {
	height: 39px;
	width: auto;
	max-width: 94px;
	position: relative;
	float: left;
	font-size: 13px;
	font-weight: 800;
	line-height: 28px;
	display: block;
	margin-right: 25px;
	z-index: 2;
}

.head_updrop {
	width: 145px;
	background-color: #FFF;
	padding: 25px 20px;
	position: absolute;
	border: 1px solid #dfdfdf;
	border-top: 1px solid #dfdfdf;
	left: -20px;
	top: 39px;
	display: none;
}

.updrop_area {
	width: 145px;
	height: 100%;
}

#menuDepth1list1:hover .head_updrop {
	display: block;
}

#head_NBdrop>a {
	font-size: 11px;
	font-weight: normal;
	display: block;
	color: #333;
}

#head_NBdrop>li>a {
	width: 147px;
	display: block;
	border-bottom: 1px solid #e6e6e6;
	color: #333;
	font-size: 14px;
	font-weight: 700;
	margin: 7px 0 3px 0;
}

#head_NBdrop>a:hover {
	color: #e51130;
}

.gnb>li>a {
	color: #000;
}

.gnb>li>a:hover {
	color: #ca0000;
}

.top_search {
	position: absolute;
	top: 9px;
	right: 145px;
	width: 180px;
	height: 28px;
	float: left;
	display: block;
	background: url('image/up_main/search_bg.png');
	background-size: 100% 100%;
	vertical-align: middle;
	padding: 5px 0 8px 20px;
	z-index: -1p
}

.top_search>input {
	border: 0;
	background-color: #000;
	width: 130px;
	height: 28px;
	color: #fff;
	line-height: 28px;
}

.top_search img {
	vertical-align: middle;
	text-align: left;
}

#txtSearch {
	outline: none;
}

.top_myinfo_area {
	width: 115px;
	height: 48px;
	float: right;
	display: block;
}

.top_myinfo_area>li {
	position: relative;
	float: left;
	display: block;
	font-size: 10px;
	color: #333;
	font-weight: 400;
	text-align: center;
	margin-top: -5px;
}

.mr15 {
	margin-right: 15px;
}

.top_myinfo_area>li>a {
	display: inline-block;
	color: #333;
	text-align: center;
	font-size: 10px;
}

.icon_login {
	width: 31px;
	height: 31px;
	float: left;
	background: url('image/up_main/icon_myinfo.png') 0 0 no-repeat;
	background-size: 100% 100%;
	margin: 4px 0 0 0;
	text-indent: -10000px;
}

.top_myinfo_area .log_txt {
	position: absolute;
	bottom: -13px;
	left: 60%;
	width: 100px;
	height: 12px;
	font-size: 10px;
	color: #333;
	font-weight: 700;
	display: block;
	text-align: center;
	margin-left: -50px;
	z-index: 6666;
}

.top_myinfo_area li a {
	display: inline-block;
	color: #333;
	text-align: center;
}

.top_myinfo_area li a:hover {
	color: #e51130;
}

.end {
	float: right;
	display: block;
}

.mypage {
	position: relative;
	width: 31px;
	height: 33px;
	float: right;
	background: url('image/up_main/icon_mypage.png') 0 0 no-repeat;
	background-size: 100% 100%;
	margin: 4px 0 0 0;
	right: -45px;
}

.bag_txt {
	position: absolute;
	bottom: -11px;
	left: 100%;
	width: 55px;
	height: 12px;
	font-size: 10px;
	display: block;
	z-index: 6666;
	font-weight: 700;
}

/* 모달 창  */
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 450px;
	height: 530px;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
/* 로그인 */
a:link, a:visited {

	text-decoration: none;
}

#wrap {
	margin: 50px auto;
	width: 433px;
	height: 474px;
}

#login_content {
	width: 373px;
	height: 464px;
	padding: 0 25px;
	border: 5px solid #CCC;
	text-align: left;
	display: inline-block;
}

#login_area {
	width: 373px;
	height: 442px;
	position: relative;
}

#subtitle {
	position: relative;
	height: 18px;
	margin: 22px auto 12px 0;
	width: 373px;
	height: 43px;
}

#subtitle>h1 {
	color: #e51130;
	font-weight: 900;
}

#container {
	padding-top: 20px;
	width: 373px;
	position: relative;
}

.p_id {
	margin-bottom: 16px;
	width: 373px;
	font-size: 13px;
}

.p_id>label {
	display: inline-block;
	width: 100px;
	font-weight: bold;
}

.p_pw {
	margin-bottom: 16px;
	width: 373px;
	font-size: 13px;
}

.p_pw>label {
	display: inline-block;
	width: 100px;
	font-weight: bold;
}

.idpw {
	color: #333;
	letter-spacing: -1px;
	background-color: white;
	width: 240px;
	height: 22px;
	border: 2px solid #CCC;
	border-radius: 5px;
	font-weight: normal;
	font-size: 13px;
	line-height: 22px;
	padding: 8px 12px;
	outline: none; /* 인풋태그 선제거 */
}

#login_form {
	position: relative;
}

#login_form>img {
	display: inline-block;
	width: 24px;
	height: 24px;
	position: absolute;
	right: 8px;
	top: 8px;
}

#remember {
	margin: -1px 0 16px;
	position: absolute;
	left: 103px;
	top: 138px;
}

#remember>input {
	color: #333;
	margin: 3px 3px 3px 4px;
	vertical-align: middle;
}

#remember>label {
	font-size: 13px;
	letter-spacing: -1px;
}

#btn_login {
	display: inline-block;
	background-color: #e51130;
	width: 268px;
	padding: 3px 0 2px 0;
	line-height: 38px;
	text-align: center;
	border-radius: 5px;
	color: #fff;
	font-weight: bold;
	position: absolute;
	top: 180px;
	left: 105px;
}

#login_help {
	width: 371px;
	position: absolute;
	bottom: 20px;
	padding-top: 10px;
	font-size: 12px;
	letter-spacing: -1px;
	border-top: 1px solid #CCC;
}

#login_help a {
	letter-spacing: -1px;
	color: #333;
}

#login_help a:hover {
	text-decoration: underline;
}

.right {
	display: inline-block;
	position: absolute;
	right: 0;
}

.right>a {
	color: #777 !important;
}

.right_bar {
	display: inline-block;
	width: 1px;
	height: 11px;
	background-color: #ccc;
	font-size: 11px;
	margin: 4px 1px 0 3px;
}

#id_error {
	left: 110px;
	bottom: 43px;
}

#pw_error {
	left: 110px;
	bottom: -16px;
}

.error {
	position: absolute;
	font-size: 11px;
	color: red;
	left: 3px;
	display: none;
	left: 110px;
}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	// el태그는 자바 스크립트 사용[로그인시 flag값 받기]

	$(document).on("click", "#btn_login",function() {
		var id = $("#login_id").val();
		var pw = $("#login_pw").val();
		if (id == "") {
			$("#login_id").focus();
			$("#id_error").text("ID를 입력하지 않았습니다.").css("display", "block").css("color", "red");
			return false;
		} else if (pw == "") {
			$("#login_pw").focus();
			$("#pw_error").text("비밀번호를 입력하지 않았습니다.").css("display", "block").css("color", "red");
			return false;
		} else if (id != "" && pw != "") {
			$("#id_error").css("display", "none");
			$("#pw_error").css("display", "none");
			//Ajax사용법
			$.ajax({
				// 가야할 서블릿 지정
				url : "loginck.bizpoll",
				// 방식 지정 [GET | POST]
				type : "POST",
				// 타입 지정
				dataType : "JSON",
				// 쿼리스트링과 같은 =에 공백X     //data를 dataTpye가방에 담아 type방식으로 url로 보냄
				data : "id=" + id + "&pw=" + pw,
				//성공했을때	
				success : function(data) {
					if (data.flag == "1") {
						$("#login_id").val(data.id);
						$("#login_pw").val(data.pw);
						location.reload();
						/* $("#frm_login").submit(); */
					} else if (data.flag == "0") {
						$("#pw_error").text("ID 또는 비밀번호가 틀렸습니다.").css("display", "block");
					}
				},
				//실패했을떄
				error : function(data) {
					alert("System Error!!!");
				}
			});
		}

	});

	$(document).on("blur", "#login_id", function() {
		var id = $("#login_id");
		var lid = id.val();

		if (lid == "") {
			$("#id_error").text("ID를 입력하지 않았습니다.").css("display", "block");
		} else {
			$("#id_error").css("display", "none");
		}

	});

	$(document).on("blur", "#login_pw", function() {
		var pw = $("#login_pw");
		var lpw = pw.val();

		if (lpw == "") {
			$("#pw_error").text("비밀번호를 입력하지 않았습니다.").css("display", "block");
		} else {
			$("#pw_error").css("display", "none");
		}

	});
	$(document).on("click", "#header_logout", function() {
		$.ajax({
			// 가야할 서블릿 지정
			url : "logout.bizpoll",
			// 방식 지정 [GET | POST]
			type : "POST",
			// 타입 지정
			dataType : "JSON",
			//성공했을때	
			success : function(data) {
				if (data.flag == "1") {
					location.href = "index.bizpoll";
				} else if (data.flag == "0") {
					alert("로그아웃 실패")
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
	<div class="header">
		<div class="top_color">
			<div class="top_area">
				<ul class="top_menu">
					<li><a href="index.bizpoll" class="icon_korea">NB KOREA</a> <span
						class="pipe">/</span></li>
					<li><a href="#" class="icon_store">Find a Store</a></li>
				</ul>
			</div>
		</div>
		<div class="se_top_color">
			<div class="top_con">
				<h1 class="logo">
					<a href="index.bizpoll" title="UP">UP</a>
				</h1>
				<div class="gnb_area">
					<ul class="gnb">
						<li id="menuDepth1list1"><a href="#" id="select1">NEW
								BALANCE</a>
							<div class="head_updrop">
								<div class="updrop_area">
									<ul id="head_NBdrop">
										<li><a href="#">신발</a></li>
										<li><a href="#">의류</a></li>
										<a href="#">HOOD</a>
										<a href="#">MTM</a>
										<li><a href="#">용품</a></li>
										<a href="#">가방</a>
										<a href="#">양말</a>
									</ul>
								</div>
							</div></li>
						<li id="menuDepth1list2"><a href="#" id="select2">NERDY</a></li>
						<li id="menuDepth1list3"><a href="#" id="select3">CASUAL</a>
						</li>
						<li id="menuDepth1list4"><a href="#" id="select4">COSTUME</a>
						</li>
						<li id="menuDepth1list5"><a href="board.bizpoll" id="select5">게시판</a>
						</li>
					</ul>
				</div>
				<p class="top_search">
					<input type="text" name="txtSearch" id="txtSearch" value
						maxlength="30" placeholder="search"> <a href="#"
						id="btnProdSearch" onclick="topSearch(this)"> <img
						src="image/up_main/btn_search.png" width="19px" height="22px">
					</a>
				</p>
				<div id="ct100_Header_divLogin">
					<ul class="top_myinfo_area">

						<!-- 로그인시 바뀌기 위해 jstl사용 -->
						<c:choose>
							<c:when test="${empty sessionScope.loginUser}">
								<li class="mr15"><a href="#" id="icon_login" class="icon_login">로그인</a>
									<p class="log_txt">
										<a href="#" id="a_login">로그인</a> / <a href="up_constract.bizpoll">회원가입</a>
									</p></li>
							</c:when>
							<c:otherwise>
								<li class="mr15"><a href="#" class="icon_login">로그인</a>
									<p class="log_txt">
										<a href="#" id="a_login">${sessionScope.loginUser.mid}님</a> / <a href="#" id="header_logout">로그아웃</a>
									</p></li>
								<%-- <li>${sessionScope.loginUser.mname} (${sessionScope.loginUser.mid})</li>
										<li><a>로그아웃</a></li>	 --%>
							</c:otherwise>
						</c:choose>

						<li class="end"><a href="#" class="mypage"></a>
							<p class="bag_txt">
								<a href="#">마이페이지</a>
							</p></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="myModal" class="modal">
		<div class="modal-content">
			<span class="close">&times;</span>
			<div id="wrap">
				<div id="login_content">
					<div id="login_area">
						<div id="subtitle">
							<h1>LOGIN</h1>
						</div>
						<div id="container">
							<form action="sessionlogin.bizpoll" method="post"
								name="frm_login" id="frm_login">
								<!-- 데이터를 보냄 -->
								<p class="p_id">
									<label for="login_id">ID</label> <input class="idpw"
										type="text" id="login_id" name="login_id" placeholder="계정">
								<div id="id_error" class="error"></div>
								</p>
								<p class="p_pw">
									<label for="login_pw">Password</label> <input class="idpw"
										type="password" id="login_pw" name="login_pw"
										placeholder="비밀번호(4~16자리)" maxlength="16">
								<div id="pw_error" class="error">ID또는 비밀번호가 틀렸습니다.</div>
								</p>
								<div id="remember">
									<input type="checkbox" name="remember" id="remember2">
									<label for="remember2">ID 저장</label>
								</div>
								<a href="#" id="btn_login"> 로그인 </a>
							</form>
						</div>
						<div id="login_help">
							<a href="up_constract.bizpoll">회원가입</a>
							<div class="right">
								<a href="#">계정 찾기</a> <span class="right_bar"></span> <a
									href="#">비밀번호 재설정</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		// Get the modal
		var modal = document.getElementById("myModal");

		// Get the button that opens the modal
		var a_login = document.getElementById("a_login");
		var icon_login = document.getElementById("icon_login");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
		
		// When the user clicks the button, open the modal 
		if(a_login.text == "로그인"){
			a_login.onclick = function() {
				modal.style.display = "block";
			}
			icon_login.onclick = function() {
				modal.style.display = "block";
			}
		}		

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	<hr>
	<hr>
</body>
</html>