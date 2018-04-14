<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="include/header.jsp" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UP_Pasion</title>
<link rel="icon" type="image/png" href="image/pabicon.png">
<style type="text/css">
	body, ul, h1 {
		margin: 0;
		padding: 0;
	}
	ul {
		list-style-type: none;
	}
	a:link, a:visited {
		color: inherit;
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

	$(document).on(
			"click",
			"#btn_login",
			function() {
				var id = $("#login_id").val();
				var pw = $("#login_pw").val();
				if (id == "") {
					$("#login_id").focus();
					$("#id_error").text("ID를 입력하지 않았습니다.").css("display",
							"block").css("color", "red");
					return false;
				} else if (pw == "") {
					$("#login_pw").focus();
					$("#pw_error").text("비밀번호를 입력하지 않았습니다.").css("display",
							"block").css("color", "red");
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
								$("#frm_login").submit();
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
						<a href="#">회원가입</a>
						<div class="right">
							<a href="#">계정 찾기</a> <span class="right_bar"></span> <a
								href="#">비밀번호 재설정</a>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>

<script type="text/javascript">
	window.onload = function() {
		var code = ${flag};
		if(code == 0) {
			document.getElementById("pw_error").style.display = "block";
		}
	}
</script>