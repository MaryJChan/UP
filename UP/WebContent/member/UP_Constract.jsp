<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UP : 회원가입</title>
<link rel="icon" type="image/png" href="image/내이바바바.png">
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	body, h1, ul, p ,h3 {
		margin: 0px;
		padding: 0px;
		font-family: 'Nanum Gothic', serif;
	}	
	label {
		cursor: pointer;
	}
	h1#naver_logo {
		font-size: 2em;
	}
	div#header, div#container, div#footer {
		width: 768px;
		margin: 0 auto;
		box-sizing: border-box;
	}
	div#header {
		height: 120px;
		padding-top: 50px;
		position: relative;	
	}
	div#container {
		position: relative;	
	}
	div#footer {
		height: 81px;		
		text-align: center;
		padding: 30px 0 15px 0;
	}
	.n_logo {
		display: block;
		width: 240px;
		height: 44px;
		margin: 0 auto;
		box-sizing: border-box;
		text-align: center;
		font-weight: 900;
		color: #d60013;
		line-height: 44px
	}
	div.lang {
		position: absolute;
		top: 14px;
		right: 0;
	}
	.lang > select {
		background: url('image/member/sel_arr.gif') 100% 50% no-repeat;
		-webkit-appearance: none;
		width: 100%;
		height: 30px;
		background-color: white;
	}
	select#langselect {
		font-size: 12px;
		font-weight: 400;
		height: 30px;
		padding: 6px 8px 5px 7px;
		min-width: 98px;
		color: #333;
		border: 1px solid #ccc;
		cursor: pointer;
	}
	option {
		padding: 0 2px 1px;
		display: block;
	}
	/* container */
	form#join_content {
		width: 460px!important;
		margin: 0 auto!important;
	}
	.terms {
		margin-bottom: 20px;
		background-color: white;
		border: 1px solid #dadada;
	}
	.terms_span > input {
		position: absolute;
		right: 1px;
		top: 50%;
		width: 22px;
		height: 22px;
		margin-top: -11px;
		visibility: hidden;		
	}
	.terms_span {
		position: relative;
		display: block;
		height: 58px;
	}
	.terms_p {
		display: block;
		padding: 15px;
		margin: 0;
		position: relative;
	}
	.terms_span > label {
		background: url('image/member/check_off.png') 100% 50% no-repeat;
		display: block;
		line-height: 20px;
		height: 58px;
		top: -1px;
		font-size: 14px;
		font-weight: 700;
	}
	.terms_span > input:checked +label {
		background: url('image/member/check_on.png') 100% 50% no-repeat;
	}
	
	/* terms_li1 */
	#terms_ul {
		padding-bottom: 7px;
		list-style: none; 
	}
	#terms_ul_li1 {
		border-top: 1px solid #f0f0f0;
	}
	ul#terms_ul >li {
		display: block;
		padding: 13px 15px 7px;
	}
	.ul_li_span {
		position: relative;
		display: block;
		height: 24px;
	}
	.label1 {
		height: 24px;
		font-size: 14px;
		font-weight: 700;
		line-height: 24px;
		position: absolute;
		color: #333;
		top: 0;
		left: 0;
		width: 100%;
	}
	.span_only {
		color: #e51130;
		font-size: 12px;
		font-weight: 400;
		
	}
	.span_only2 {
		color: #8e8e8e;
		font-size: 12px;
		font-weight: 400;
	}
	.ul_li_span > input {
		visibility: hidden;
		position: absolute;
		right: 1px;
		width: 22px;
		height: 22px;
		margin-top: -11px;
		top: 50%;
	}
	.ul_li_span > label {
		background: url('image/member/check_off.png') 100% 50% no-repeat;
		display: block;
	}
	
	.ul_li_span > input:checked +label {
		background-image: url('image/member/check_on.png');
	}
	.error {
		font-size: 12px;
		color: red;
		line-height: 16px;
		margin: 5px 15px  15px 90px;
		display: none;
	}
	.terms_box {
		position: relative;
		box-sizing: border-box;
		height: 88px;
		margin-top: 11px;
		padding: 8px 10px;
		border: 1px solid #f0f0f0;
		background-color: #f7f7f7;
		overflow: auto;
	}
	.article {
		margin-top: 0;
	}
	h3.article_title {
		font-size: 12px;
		font-weight: 700;
		line-height: 16px;
		color: #666;
	}
	.article > p {
		display: block;
		font-size: 12px;
		line-height: 16px;
		color: #666;
	}
	.btn_double_area {
		margin: 30px -5px 0;
		overflow: hidden;
	}
	.btn_double_area > span {
		display: block;
		float: left;
		width: 50%;
	}
	.btn_type {
		width: auto;
		margin: 0 5px;
		font-size: 20px;
		font-weight: 600;
		line-height: 61px;
		display: block;
		box-sizing: border-box;
		height: 61px;
		padding-top: 1px;
		text-align: center;
	}
	.btn_default {
		color: #333;
		border: 1px solid #CCC;
		background-color: #fff;
		
	}
	.btn_agree {
		color: #fff;
		border: 1px solid #CCC;
		background-color: #e51130;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	.group_join {
		margin: 20px 0 65px;
		text-align: center;
		color: #666;
		font-size: 12px;
	}
	.group_join > a {
		text-decoration: underline;
		color: #333;
	}
	#footer {		
		width: 768px;		
	}
	#footer div em {
		font: 9px verdana;
		padding-left:  4px;
	}
	#footer div a {
		font: 700 9px Verdana
	}
	#footer div a:hover {
		color: #2db400;		
		text-decoration: underline;
	}
	#footer div span{
		font: 9px/14px Verdana;
		padding-left: 2px;
	}
	#footer_list {
		list-style-type: none;		
		margin: 0 0 9px 0;
		height: 13px;
		line-height: 13px;
	}
	#footer_list > li {
		display: inline-block;
		padding: 0 5px 0 7px;
		font-size: 11px;
		position: relative;
		color: #333;
		border-left: 1px solid #ccc;
	}
	#footer_list > li  a:hover {
		color: #438a01;
		text-decoration: underline;
	}	
	#babo {
		border: none!important;
	}
	#footer_logo {		
		height: 11px;
		width: 15px;
		display: inline-block;		
	}
	#footer_logo a {
		background-size: 63px 11px;
		display: inline-block;
		height: 11px;
		width: 15px;
	}
	#logo {
		text-align: center;
		color: #d60013;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){			
		$("#cbox").on("click", function(){
			var aCheck = $("#cbox").is(":checked");
			if (aCheck) {				
				$(".fff").prop("checked", true);			
			} else {
				$(".fff").prop("checked", false);			
			}			
			
		});		
		
		$("#agree").on("click", function(){
			var aCheck1 = $("#libox").is(":checked");
			var aCheck2 = $("#libox2").is(":checked");
			if(aCheck1==false || aCheck2==false) {
				$(".error").css("display", "block");
				return false;
			}
		});	
		$(".fff").on("click", function(){
			var aCheck1 = $("#libox").is(":checked");
			var aCheck2 = $("#libox2").is(":checked");
			var aCheck3 = $("#libox3").is(":checked");
			var aCheck4 = $("#libox4").is(":checked");			
			if(aCheck1 == false || aCheck2 == false || aCheck3 == false || aCheck4 == false) {
				$("#cbox").prop("checked", false);				
			} else if (aCheck1 == true && aCheck2 == true && aCheck3 == true && aCheck4 == true) {
				$("#cbox").prop("checked", true);
			}
		});
	
	});
	

</script>
</head>
<body>
	<div id="header">
		<h1 id="naver_logo"><a href="#" class="n_logo">UP 회원가입</a></h1>
		<div class="lang">
			<select id="langselect">
				<option>한국어</option>
				<option>English</option>
				<option>中文(简体)</option>
				<option>中文(台灣)</option>
			</select>
		</div>
	</div>

	<div id="container">
		<form id="join_content">
			<div class="terms">
				<p class="terms_p">
					<span class="terms_span">
						<input type="checkbox" id="cbox" >
						<label for="cbox">
							이용약관, 개인정보 수집 및 이용,<br>
							위치정보 이용약관(선택), 프로모션 안내<br>
							메일 수신(선택)에 모두 동의합니다.
						</label>
					</span>
				</p>
				
				<ul id="terms_ul">
					<li id="terms_ul_li1">
						<span class="ul_li_span">
							<input type="checkbox" id="libox" class="fff">
							<label for="libox" class="label1">
								UP 이용약관 동의
								<span class="span_only">(필수)</span>
							</label>
						</span>
						<div class="terms_box">
							<div class="article">
								<h3 class="article_title">제 1 조 (목적)</h3>
								<p>
									이 약관은 UP 주식회사 ("회사" 또는 "UP")가 제공하는 UP <br>
									및 UP 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, <br>
									의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
								</p>
								<br>
								
								<h3 class="article_title">제 2 조 (정의)</h3>
								<p>
									이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
									①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유<br>
									무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 UP 및 네이<br>
									버 관련 제반 서비스를 의미합니다.
								</p>
							</div>
						</div>
					</li>
					<li id="terms_ul_li2">
						<span class="ul_li_span">
							<input type="checkbox" id="libox2" class="fff">
							<label for="libox2" class="label1">
								개인정보 수집 및 이용에 대한 안내
								<span class="span_only">(필수)</span>
							</label>
						</span>
						<div class="terms_box">
							<div class="article">
								<p>
									정보통신망법 규정에 따라 UP에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
								</p>
								<br>
								
								<h3 class="article_title">1. 수집하는 개인정보</h3>
								<p>
									이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 UP 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위	해 회원가입을 할 경우, UP는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
								</p>
							</div>
						</div>
					</li>
					<li id="terms_ul_li3">
						<span class="ul_li_span">
							<input type="checkbox" id="libox3" class="fff">
							<label for="libox3" class="label1">
								위치정보 이용약관 동의
								<span class="span_only2">(선택)</span>
							</label>
						</span>
						<div class="terms_box">
							<div class="article">
								<p>
									위치정보 이용약관에 동의하시면, <strong>위치를 활용한 광고 정보 수신</strong> 등을
									포함하는 UP 위치기반 서비스를 이용할 수 있습니다.
								</p>
								<br>															
								<h3 class="article_title">제 1 조 (목적)</h3>
								<p>									
									이 약관은 UP 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
								</p>
							</div>
						</div>
					</li>
					<li id="terms_ul_li3">
						<span class="ul_li_span">
							<input type="checkbox" id="libox4" class="fff">
							<label for="libox4" class="label1">
								이벤트 등 프로모션 알림 메일 수신
								<span class="span_only2">(선택)</span>
							</label>
						</span>						
					</li>
				</ul>
				<span class="error"> UP 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요. </span>
			</div>
			
			<div class="btn_double_area">
				<span><a href="index.bizpoll" class="btn_type btn_default">비동의</a></span>
				<span><a href="member.bizpoll" class="btn_type btn_agree" id="agree">동의</a></span>
			</div>			
		</form>
		
		<div class="group_join">
			회사, 동아리 등 단체에서 사용할 ID가 필요하세요?
			<a href="#">단체 회원 가입</a>
		</div>
	</div>
</body>
</html>
<%@ include file="../include/footer.jsp" %>