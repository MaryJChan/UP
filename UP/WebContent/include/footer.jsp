<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	* {
		padding: 0;
		margin: 0;
	}	
	body, input, button, textarea {
		font-size: 12px;
		line-height: 1.3ec;
		font-family: 'Nanum Gothic', serif;
		color: #333;
	}		
	ul {
		list-style-type: none;
	}		
	a {
		text-decoration: none;
	}	
	hr {
		display: none;
	}
	.footer {
		width: 100%;
		height: 438px;
		display: block;
		clear: both;
	}
	.f_icon_wrap {
		width: 100%;
		clear: both;
		background-color: #383737;
	}
	.f_icon {
		width: 980px;
		height: 52px;
		display: block;
		margin-bottom: 40px;
		clear: both;
	}
	.f_icon_area {
		width: 980px;
		height: 72px;
		margin: 0 auto;
		clear: both;
	}
	.f_icon li {
		width: 245px;
		height: 52px;
		float: left;
		display: block;
	}
	.f_icon li a {
		font-size: 14px;
		font-weight: 400;
		color: #fff;
		line-height: 21px;
		display: block;
	}
	.f_icon01 {
		height: 60px;
		background: url('image/footer/f_icon01.png') 0 12px no-repeat;
		background-size: 29px 44px;
		padding: 12px 0 0 40px;
	}
	.f_icon02 {
		height: 60px;
		background: url('image/footer/f_icon02.png') 0 18px no-repeat;
		padding: 12px 0 0 50px;
	}
	.f_icon03 {
		height: 60px;
		background: url('image/footer/f_icon03.png') 0 17px no-repeat;
		background-size: 35px 35px;
		padding: 12px 0 0 45px;
	}
	.f_icon04 {
		height: 60px;
		background: url('image/footer/f_icon04.png') 0 17px no-repeat;
		background-size: 36px 36px;
		padding: 12px 0 0 48px;
	}
	.f_icon li a:hover {
		color: #e21836;
	}
	.f_icon li span {
		color: #999;
	}
	.f_list_wrap {
		width: 100%;
		clear: both;
		background-color: #272727;
	}
	.f_list_area {
		width: 980px;
		height: 200px;
		padding: 20px 0;
		border-bottom: 2px solid #1E1E1E;
		margin: 0 auto;
		position: relative;
		clear: both;
	}
	.isms_mark {
		position: absolute;
		top: 120px;
		right: -25px;
		width: 264px;
		height: 42px;
		display: block;
		z-index: 10;
	}
	.f_list {
		width: 200px;
		float: left;
	}
	.f_list li {
		width: 200px;
		font-weight: 400;
		display: block;
		margin-bottom: 10px;
		clear: both;
	}
	.f_list li a:hover {
		color: #e21836;
	}
	.f_list li a {
		font-size: 12px;
		color:  #fff;
	}
	.marR50 {
		margin-right: 50px;
	}
	.marR40 {
		margin-right: 40px;
	}
	.tit {
		font-size: 16px;
		color: #fff;
		font-weight: 800px;
		display: block;
		margin-bottom: 20px!important;
		clear: both;
	}
	.f_list_sns {
		width: 210px;
		float: left;
	}
	.f_list_sns li.tit {
		width: 200px;
		height: 16px;
		display: block;
		margin-bottom: 20px;
		clear: both;
	}
	.f_list_sns li {
		width: 39px;
		height: 39px;
		float: left;
		display: block;
		margin-right: 2px;
	}
	.sns {
		width: 39px;
		height: 39px;
		display: block;
	}
	.sns01 {
		background: url("image/footer/sns_facebook.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.sns01:hover {
		background: url("image/footer/sns_facebook_hover.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.sns02 {
		background: url("image/footer/sns_twiter.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.sns02:hover {
		background: url("image/footer/sns_twiter_hover.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.sns03 {
		background: url("image/footer/sns_instagram.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.sns03:hover {
		background: url("image/footer/sns_instagram_hover.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.sns04 {
		background: url("image/footer/sns_youtube.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.sns04:hover {
		background: url("image/footer/sns_youtube_hover.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.sns05 {
		background: url("image/footer/sns_between.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.sns05:hover {
		background: url("image/footer/sns_between_hover.png") 0 0 no-repeat;
		background-size: 39px 39px;
	}
	.copyright_wrap {
		width: 100%;
		clear: both;
		background-color: #272727;
	}
	.copyright_area {
		width: 980px;
		height: 70px;
		padding: 25px 0;
		margin: 0 auto;
		position: relative;
		clear: both;
		font-size: 12px;
		line-height: 18px;
		letter-spacing: -0.5px;
		color: #8f8e8e;		
	}
	.copyright_area a {
		color: #8f8e8e;	
	}
	.copyright_area span {
		font-size: 12px;
		color: #8f8e8e;		
	}
	.copyright_area span a {
		color: #fff;
		font-size: 12px;
	}
</style>
</head>
<body>
	<div class="footer">
		<div class="f_icon_wrap">
			<div class="f_icon_area">
				<ul class = "f_icon">
					<li>
						<a href="#" class="f_icon01">
							FIND A STORE
							<br>
							<span>매장안내</span>
						</a>
					</li>
					<li>
						<a href="#" class="f_icon02">
							TEAM WEAR
							<br>
							<span>팀/단체복 구매</span>
						</a>
					</li>
					<li>
						<a href="up_constract.bizpoll" class="f_icon03">
							MEMBER JOIN
							<br>
							<span>회원가입</span>
						</a>
					</li>
					<li>
						<a href="#" class="f_icon04">
							DOWNLOAD APP
							<br>
							<span>앱 다운로드</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="f_list_wrap">
			<div class="f_list_area">
				<p class="isms_mark">
					<a href="#">
						<img src="image/footer/isms_mark.png">
					</a>
				</p>
				<ul class="f_list marR50">
					<li class="tit">NEED HELP?</li>
					<li><a href="#">고객상담실</a></li>
					<li><a href="#">FAQs</a></li>
					<li><a href="#">1 : 1문의</a></li>
					<li><a href="#">통합 마일리지 안내</a></li>
					<li><a href="#">팀/단체복 주문 안내</a></li>
				</ul>
				<ul class="f_list marR50">
					<li class="tit">ORDER</li>
					<li><a href="#">주문/배송 조회</a></li>
					<li><a href="#">온라인 회원등급 혜택</a></li>
					<li><a href="#">온라인 쿠폰</a></li>
					<li><a href="#">사이즈 정보</a></li>
					<li><a href="#">배송 및 교환 · 반품 안내</a></li>
					<li><a href="#">세탁 및 손질 방법 안내</a></li>
					<li><a href="#">상품후기</a></li>
				</ul>
				<ul class="f_list marR40">
					<li class="tit">INSIDE UP</li>
					<li><a href="#">100일 역사</a></li>
					<li><a href="#">사회 공헌</a></li>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">진행 중인 이벤트</a></li>
					<li><a href="#">지난 이벤트/당첨자 발표</a></li>
				</ul>
				<ul class="f_list_sns">
					<li class="tit">STAY CONNECTED</li>
					<li><a href="#" class="sns sns01"></a></li>
					<li><a href="#" class="sns sns02"></a></li>
					<li><a href="#" class="sns sns03"></a></li>
					<li><a href="#" class="sns sns04"></a></li>
					<li><a href="#" class="sns sns05"></a></li>
				</ul>
			</div>
		</div>
		<div class="copyright_wrap">
			<div class="copyright_area">
				<span class="f_white">
					<a href="#">개인정보 처리방침</a>
				</span> / 
				<a herf="#">이용약관</a> / 
				(주)UP패션사업부 / 광주광역시 반룡로 6번길 16 UP<br>
				고객상담실 : A/S 및 오프라인 매장관련 010-2714-7318, 온라인 스토어 010-2714-7318, 키즈 온라인 스토어 010-2714-7318 / 대표 이메일 : ddhfjswl2003@naver.com<br>
				대표이사 : 김재찬 / 사업자등록번호 : 113-85-19030 / 통신판매업신고 : 금천구청 제 2005-01053 / 개인정보책임자 : 조동주<br>
				UP  Copyright © IUPashion Corp. All Rights Reserved.
			</div>
		</div>
		
	</div>
</body>
</html>