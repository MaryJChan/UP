<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IU_Pasion</title>
<link rel="icon" type="image/png" href="image/pabicon.png">
<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	* {
		margin: 0px;
		padding: 0px;
	}
	body, input, button, textarea {		
		font-size: 12px;
		line-height: 1.3em;
		font-family: 'Nanum Gothic', serif;
		color: #333;
	}
	table {
		border-collapse: collapse;
	}
	a {
		text-decoration: none;
	}
	select {
		font-size: 12px;
		color: #333;
		padding: 3px 2px;
		border: 1px solid #E0E0E1;	
		height: 25px;	
		line-height: 25px;
	}
	td {
		position: relative;
	}
	.conContainer {
		background-color: #FFF;
		padding: 20px;
		padding-bottom: 60px;
		zoom: 1;
		width: 940px;
		margin: 10px auto;
	}
	.con_900 {
		width: 900px;
		margin: 0 auto;
	}
	.title_r {
		font-size: 26px;
		line-height: 1.4em;
		font-weight: bold;
		color: #d60013;
		letter-spacing: -1px;
		padding-top: 10px;
	}
	.mt20 {
		margin-top: 20px;
	}
	.mb40 {		
		height: 31px;
	}
	.box_b10 {
		border: 10px solid #CCC;
	}
	.ptb35 {
		padding-top: 35px;
		padding-bottom: 35px;
	}
	.plr30 {
		padding-right: 30px;
		padding-left: 30px;
	}
	.bb1 {
		border-bottom: 1px solid #CCC;
		margin-bottom: 5px;
		padding-bottom: 20px;
	}
	.join_input {
		table-layout: fixed;
	}
	.join_input th {
		font-weight: normal;
		text-align: left;
		vertical-align: top;
		padding: 10px 0 6px 0;
		width: 150px;
	}
	.join_input th .pt6 {
		padding-top: 6px;
	}
	.join_input td {
		padding: 8px 0 12px 0;
		color: #666;
	}
	.must {
		color: Red;
		font-weight: bold;
	}
	.input_txt01 {
		width: 155px;
		height: 23px;
		line-height: 23px;
		border: 1px solid #c5c5c5;
		border-right: 1px solid #e5e5e5;
		border-bottom: 1px solid #e5e5e5;
		padding: 0 7px;
		vertical-align: middle;
	}
	.input_txt02 {
		width: 32px;
		height: 23px;
		line-height: 23px;
		border: 1px solid #c5c5c5;
		border-right: 1px solid #e5e5e5;
		border-bottom: 1px solid #e5e5e5;
		padding: 0 7px;
		vertical-align: middle;
	}
	/* .btn_dgray3 {
		width: 61px;
		display: inline-block;;
		height: 24px;
		background-color: #555;
		color: #FFF;
		font-size: 11px;
		line-height: 24px;
		zoom: 1;
		vertical-align: middle;
		text-align: center;
		border-radius: 2px;
	} */
	.f_11p {
		font-size: 11px;
	}
	.lgray {
		color: #999;
	}
	.lgray2 {
		color: #666;
	}
	.rd, .chk {
		width: 13px;
		height: 13px;
		padding: 0;
		margin: 0 0 2px 0;
		vertical-align: middle;
	}
	.m130 {
		margin-left: 30px;
	}
	.mb8 {
		margin-bottom: 8px;
		height: 25px;
		position: relative;
	}
	.tel_sel {		
		width: 70px;
	}
	.frontphonenumber {
		position: absolute;
		top: 0px;
		left: 82px;
	}
	.lastphonenumber {
		position: absolute;
		top: 0px;
		left: 142px;
	}
	.numberside {
		position: absolute;
		top: 7.4px;
		left: 133.3px;
	}
	.fl {
		float: left;
	}
	.fr {
		float: right;
	}
	.btn_gray {
		display: inline-block;
		width: 106px;
		height: 31px;
		background: url(image/new_member/btn_bg_gray.png);
		border-radius: 3px;		
	}
	.btn_red4 {
		display: inline-block;					
		vertical-align: middle;
		padding-left: 10px;
	}
	.error, .error_2 {
		position: absolute;
		font-size: 11px;
		color: red;
		left: 3px;		
		display: none;
	}
	.error {
		bottom: -3px;
	}
	.error_2 {	
		bottom: 3px;		
	}
	#email_txt {
		position: relative;
		bottom: 4px;
	}
	.mail_sel {
		position: relative;
		width: 120px;
		top: 1px;
		vertical-align: middle;
	}
	#sample6_postcode {
		width: 80px;
	}
	#sample6_address {
		width: 255px;
	}
	#sample6_button {
		width: 80px;
		display: inline-block;;
		height: 25px;
		background-color: #555;
		color: #FFF;
		font-size: 11px;
		line-height: 26px;
		zoom: 1;
		vertical-align: middle;
		text-align: center;
		border-radius: 2px;
		
	}
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	
	/* $(document).on("click", ".btn_dgray3", function(){
		// 새창의 크기
		cw= 550;
		ch=300;
		// 스크린의 크기
		sw=screen.availWidth;
		sh=screen.availHeight;
		// 팝업창의 포지션(딱 가운데로옴)
		px=(sw-cw)/2;
		py=(sh-ch)/2;
		
		var id = $("#PlaceHolder1_txtWebID").val();
		
		//윈도우객체 띄움 (새로운 창에서 열림)
		//쿼리 스트링 사용 (?)
		var url = "id_olap_ck.bizpoll?memberid=" + id;
		window.open(url, "_blank_1", "toolbar=no, menubar=no, status=no, scrollbars=no, resizable=no, left=" + px + ",top=" + py + ",width=" + cw + ",height=" +ch);
		
	}); */
	
	 $(document).on("click", "#btnRegist", function(){		 
		 var mid = $("#PlaceHolder1_txtWebID"),
		   	   mpw = $("#PlaceHolder1_txtWebPwd"),
			   mpwcheck = $("#PlaceHolder1_txtWebPwdChk"),
			   mname = $("#PlaceHolder1_txtCustName"),
			   myear = $("#PlaceHolder1_txtBirthYear"),
			   mmonth = $("#PlaceHolder1_txtBirthMonth"),
			   mday = $("#PlaceHolder1_txtBirthDay"),
			   msex = $("input[type=radio][name=PlaceHolder1_rbtnCustSex]:checked").val(),			  
			   mphone1 = $("#PlaceHolder1_ddlCellNo1").val(),
			   mphone2 = $("#PlaceHolder1_txtCellNo2"),
			   mphone3= $("#PlaceHolder1_txtCellNo3"),
			   mmail1 = $("#PlaceHolder1_txtEmail1"),
			   mmail2 = $("#PlaceHolder1_txtEmail2"),
			   mpostcode = $("#sample6_postcode"),
			   madd1 = $("#sample6_address"),
			   madd2 = $("#sample6_address2");
				
		var tid = $.trim(mid.val()),
		 	   tpw = $.trim(mpw.val()),
			   tpwcheck = $.trim(mpwcheck.val()),
			   tname = $.trim(mname.val()),
			   tyear = $.trim(myear.val()),
			   tmonth = $.trim(mmonth.val()),
			   tday = $.trim(mday.val()),
			   tphone2 = $.trim(mphone2.val()),
			   tphone3 = $.trim(mphone3.val()),
			   tmail1 = $.trim(mmail1.val()),
		       tmail2 = $.trim(mmail2.val()),
		       tpostcode = $.trim(mpostcode.val()),
			   tadd1 = $.trim(madd1.val()),
			   tadd2 = $.trim(madd2.val());
		var regPass = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/; // 6~20 자 이내 숫자 + 영문		
		
		if(tid=="") {
			$("#mem_id_error").text("ID를 입력하지 않았습니다.").css("display","block");
			mid.focus();
			return false;
		}		
		
		if(tpw=="") {
			$("#mem_pw_error").text("비밀번호를 입력하지 않았습니다.").css("display","block");
			mpw.focus();
			return false;			
		} else if(!regPass.test(tpw)) { 	//정규식이 안맞을때만 돔
			$("#mem_pw_error").text("6~20 자 이내 숫자 + 영문을 입력해주세요.").css("display","block");
			mpw.select();
			return false;			
		} else if(tpwcheck=="") {
			$("#pwchk_error").text("비밀번호 확인을 입력하지 않았습니다.").css("display","block");	
			mpwcheck.focus();
			return false;						
		} else if(tpw != tpwcheck){
			$("#pwchk_error").text("비밀번호가 일치하지 않습니다.").css("display","block");
			mpw.select();
			return false;			
		}		
		
		if(tname=="") { 
			$("#name_error").text("이름을 입력하지 않았습니다.").css("display","block");
			mname.focus();
			return false;
		} else if($.isNumeric(tname) == true ){
			$("#name_error").text("숫자를 입력할수 없습니다.").css("display","block");	
			mname.select();
			return false;
		}		
		
		if(tyear=="") { 
			$("#birth_error").text("연도를 입력하지 않았습니다.").css("display","block");	
			myear.focus();
			return false;
		} else if(tyear.length != 4) {
			$("#birth_error").text("연도를 4자리로 입력해주세요.").css("display","block");
			myear.select();
			return false;
		} else if($.isNumeric(tyear) == false ){
			$("#birth_error").text("연도를 숫자로 입력해주세요.").css("display","block");	
			myear.select();
			return false;
		}		
		
		if(tmonth=="") {
			$("#birth_error").text("월을 입력하지 않았습니다.").css("display","block");	
			mmonth.focus();
			return false;
		} else if(tmonth.length != 2) {
			$("#birth_error").text("월을 2자리로 입력해주세요.").css("display","block");	
			mmonth.select();
			return false; 
		} else if($.isNumeric(tmonth) == false ){
			$("#birth_error").text("월을 숫자로 입력해주세요.").css("display","block");		
			mmonth.select();
			return false;
		} else if(parseInt(tmonth) > 12 || parseInt(tmonth) < 1) {
			$("#birth_error").text("월을 1~12사이로 입력해주세요.").css("display","block");		
			mmonth.select();
			return false;
		}		
		
		if(tday=="") {
			$("#birth_error").text("날짜를 입력하지 않았습니다.").css("display","block");	
			mday.focus();
			return false;
		} else if(tday.length != 2) {
			$("#birth_error").text("날짜를 2자리로 입력해주세요.").css("display","block");		
			mday.select();
			return false; 
		} else if($.isNumeric(tday) == false ){
			$("#birth_error").text("날짜를 숫자로 입력해주세요.").css("display","block");			
			mday.select();
			return false;
		} else if(parseInt(tday) > 31 || parseInt(tday) < 1) {
			$("#birth_error").text("날짜를 1~31사이로 입력해주세요.").css("display","block");		
			mday.select();
			return false;
		}
				
		if(mphone1=="") {
			$("#phone_error").text("휴대폰 앞자리를 선택해주세요.").css("display","block");		
			mphone1.focus();
			return false;
		}		
	
		if(tphone2=="") {
			$("#phone_error").text("휴대폰 가운데 번호를 입력하지 않았습니다.").css("display","block");
			mphone2.focus();
			return false;
		} else if(tphone2.length != 4) {
			$("#phone_error").text("휴대폰 번호가 올바르지 않습니다.").css("display","block");
			mphone2.select();
			return false;
		} else if($.isNumeric(tphone2) == false ){
			$("#phone_error").text("휴대폰 번호가 올바르지 않습니다.").css("display","block");
			mphone2.select();
			return false;
		}		
		
		if(tphone3=="") {
			$("#phone_error").text("휴대폰 마지막 번호를 입력하지 않았습니다.").css("display","block");
			mphone3.focus();
			return false;
		} else if(tphone3.length != 4) {
			$("#phone_error").text("휴대폰 번호가 올바르지 않습니다.").css("display","block");
			mphone3.select();
			return false;
		} else if($.isNumeric(tphone3) == false ){
			$("#phone_error").text("휴대폰 번호가 올바르지 않습니다.").css("display","block");
			mphone3.select();
			return false;
		}
		
		if(tpostcode=="") {
			$("#postcode_error").text("주소를 입력하지 않았습니다.").css("display", "block").css("color", "red");
			$("#sample6_button").focus();
			return false;
		} else if (tadd1 == "") {
			$("#add_error").text("주소를 입력하지 않았습니다.").css("display", "block").css("color", "red");
			$("#sample6_button").focus();
			return false;
		} else if (tadd2 == "") {
			$("#add_error").text("주소를 입력하지 않았습니다.").css("display", "block").css("color", "red");
			madd2.focus();
			return false;
		}
		
		if(tmail1=="") {
			$("#email_txt").text("이메일이 올바르지 않습니다.").css("display", "block").css("color", "red");
			mmail1.select();
			return false;
		} else if (tmail2=="") {
			$("#email_txt").text("이메일이 올바르지 않습니다.").css("display", "block").css("color", "red");
			mmail2.select();
			return false;
		}
		
		var checkid =$("#PlaceHolder1_hiddenId").val();
		if(checkid == "T"){
			$("#frm_member").submit();
		} else {
			return false;
		}	
		
	});
	 
	/*  $(document).on("change", "#PlaceHolder1_txtWebID", function(){
		 var hiddenChange = $("#PlaceHolder1_hiddenId");		 
		 hiddenChange.val("F");		 
	 });	  */
	 
	$(document).on("blur", "#PlaceHolder1_txtWebID", function(){	
		var mid = $("#PlaceHolder1_txtWebID");			  
		var tid = $.trim(mid.val());
			
		if(tid=="") {
			$("#mem_id_error").text("ID를 입력하지 않았습니다.").css("display","block");
		} else {
			$("#mem_id_error").css("display","none");
		}	
	});
	
	$(document).on("blur", "#PlaceHolder1_txtWebPwd", function(){
		var mpwcheck = $("#PlaceHolder1_txtWebPwdChk"),
		 	   mpw = $("#PlaceHolder1_txtWebPwd");
		var tpw = $.trim(mpw.val()),
		       tpwcheck = $.trim(mpwcheck.val());
		var regPass = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/; // 6~20 자 이내 숫자 + 영문
		
		if(tpw=="") {
			$("#mem_pw_error").text("비밀번호를 입력하지 않았습니다.").css("display","block");
		} else if(!regPass.test(tpw)) { 	//정규식이 안맞을때만 돔
			$("#mem_pw_error").text("6~20 자 이내 숫자 + 영문을 입력해주세요.").css("display","block");
		} else if(tpw == tpwcheck){
			$("#pwchk_error").css("display","none");
		} else {
			$("#mem_pw_error").css("display","none");
		}
	});
	$(document).on("blur", "#PlaceHolder1_txtWebPwdChk", function(){
		var mpwcheck = $("#PlaceHolder1_txtWebPwdChk"),
			   mpw = $("#PlaceHolder1_txtWebPwd");
		var tpw = $.trim(mpw.val()),
			   tpwcheck = $.trim(mpwcheck.val());
		
		if(tpwcheck=="") {
			$("#pwchk_error").text("비밀번호 확인을 입력하지 않았습니다.").css("display","block");	
		} else if(tpw != tpwcheck){
			$("#pwchk_error").text("비밀번호가 일치하지 않습니다.").css("display","block");
		} else {
			$("#pwchk_error").css("display","none");
		}
	});
	$(document).on("blur", "#PlaceHolder1_txtCustName", function(){
		var mname = $("#PlaceHolder1_txtCustName");
		var tname = $.trim(mname.val());
		
		if(tname=="") { 
			$("#name_error").text("이름을 입력하지 않았습니다.").css("display","block");
		} else if($.isNumeric(tname) == true ){
			$("#name_error").text("숫자를 입력할수 없습니다.").css("display","block");	
		} else {
			$("#name_error").css("display","none");	
		}
	});
	$(document).on("blur", "#PlaceHolder1_txtBirthYear", function(){
		var myear = $("#PlaceHolder1_txtBirthYear")
		var tyear = $.trim(myear.val());
		
		if(tyear=="") { 
			$("#birth_error").text("연도를 입력하지 않았습니다.").css("display","block");	
		} else if(tyear.length != 4) {
			$("#birth_error").text("연도를 4자리로 입력해주세요.").css("display","block");
		} else if($.isNumeric(tyear) == false ){
			$("#birth_error").text("연도를 숫자로 입력해주세요.").css("display","block");	
		} else {
			$("#birth_error").css("display","none");
		}
	});
	$(document).on("blur", "#PlaceHolder1_txtBirthMonth", function(){
		var mmonth = $("#PlaceHolder1_txtBirthMonth")
		var tmonth = $.trim(mmonth.val());
		
		if(tmonth=="") {
			$("#birth_error").text("월을 입력하지 않았습니다.").css("display","block");	
		} else if(tmonth.length != 2) {
			$("#birth_error").text("월을 2자리로 입력해주세요.").css("display","block");	
		} else if($.isNumeric(tmonth) == false ){
			$("#birth_error").text("월을 숫자로 입력해주세요.").css("display","block");		
		} else if(parseInt(tmonth) > 12 || parseInt(tmonth) < 1) {
			$("#birth_error").text("월을 1~12사이로 입력해주세요.").css("display","block");		
		} else {
			$("#birth_error").css("display","none");
		}
	});
	
	$(document).on("blur", "#PlaceHolder1_txtBirthDay", function(){
		var mday = $("#PlaceHolder1_txtBirthDay")
		var tday = $.trim(mday.val());
		
		if(tday=="") {
			$("#birth_error").text("날짜를 입력하지 않았습니다.").css("display","block");	
		} else if(tday.length != 2) {
			$("#birth_error").text("날짜를 2자리로 입력해주세요.").css("display","block");		
		} else if($.isNumeric(tday) == false ){
			$("#birth_error").text("날짜를 숫자로 입력해주세요.").css("display","block");			
		} else if(parseInt(tday) > 31 || parseInt(tday) < 1) {
			$("#birth_error").text("날짜를 1~31사이로 입력해주세요.").css("display","block");		
		} else {
			$("#birth_error").css("display","none");
		}
	});
	
	$(document).on("blur", "#PlaceHolder1_ddlCellNo1", function(){		
		var mphone1 = $("#PlaceHolder1_ddlCellNo1").val();
		
		if(mphone1=="") {
			$("#phone_error").text("휴대폰 앞자리를 선택해주세요.").css("display","block");		
		} else {
			$("#phone_error").css("display","none");
		}
	});	
	
	$(document).on("blur", "#PlaceHolder1_txtCellNo2", function(){
		var mphone2 = $("#PlaceHolder1_txtCellNo2");
		var tphone2 = $.trim(mphone2.val());
		
		if(tphone2=="") {
			$("#phone_error").text("휴대폰 가운데 번호를 입력하지 않았습니다.").css("display","block");
		} else if(tphone2.length != 4) {
			$("#phone_error").text("휴대폰 번호가 올바르지 않습니다.").css("display","block");
		} else if($.isNumeric(tphone2) == false ){
			$("#phone_error").text("휴대폰 번호가 올바르지 않습니다.").css("display","block");
		} else {
			$("#phone_error").text("휴대폰 번호가 올바르지 않습니다.").css("display","none");
		}
	});
	
	$(document).on("blur", "#PlaceHolder1_txtCellNo3", function(){
		var mphone3 = $("#PlaceHolder1_txtCellNo3");
		var tphone3 = $.trim(mphone3.val());
		
		if(tphone3=="") {
			$("#phone_error").text("휴대폰 마지막 번호를 입력하지 않았습니다.").css("display","block");
		} else if(tphone3.length != 4) {
			$("#phone_error").text("휴대폰 번호가 올바르지 않습니다.").css("display","block");
		} else if($.isNumeric(tphone3) == false ){
			$("#phone_error").text("휴대폰 번호가 올바르지 않습니다.").css("display","block");
		} else {
			$("#phone_error").css("display","none");
		}
	});
	
	$(document).on("click", "#sample6_button", function(){		
		$("#postcode_error").css("display", "none");		
		$("#add_error").css("display", "none");
		
	});
	
	$(document).on("blur", "#sample6_address2", function(){
		var madd2 = $("#sample6_address2");
		var tadd2 = $.trim(madd2.val());
		if (tadd2 == "") {
			$("#add_error").text("주소를 입력하지 않았습니다.").css("display", "block").css("color", "red");
		} else {
			$("#add_error").css("display", "none");
		}
	});
	
	$(document).on("blur", "#PlaceHolder1_txtEmail1", function(){
		var mmail1 = $("#PlaceHolder1_txtEmail1");
		var tmail1 = $.trim(mmail1.val());
		
		if(tmail1=="") {
			$("#email_txt").text("이메일이 올바르지 않습니다.").css("display", "block").css("color", "red");
		} else {
			$("#email_txt").text("ID/PW 분실 시 입력하신 E-Mail 주소로 ID/PW가 발송됩니다.").css("display", "block").css("color", "#999");
		}	
	});
	$(document).on("blur", "#PlaceHolder1_txtEmail2", function(){
		var mmail2 = $("#PlaceHolder1_txtEmail2");
		var tmail2 = $.trim(mmail2.val());

		if(tmail2=="") {
			$("#email_txt").text("이메일이 올바르지 않습니다.").css("display", "block").css("color", "red");
		} else {
			$("#email_txt").text("ID/PW 분실 시 입력하신 E-Mail 주소로 ID/PW가 발송됩니다.").css("display", "block").css("color", "#999");
		}
	});
	
	$(document).on("change", "#PlaceHolder1_selectEmail3", function(){		
		var selmail = $("#PlaceHolder1_selectEmail3").val();
		var txtmail = $("#PlaceHolder1_txtEmail2").val(selmail);		
		if (selmail == "direct") {			
			$("#PlaceHolder1_txtEmail2").val("");
			txtmail.attr("readonly", false);
			$("#PlaceHolder1_txtEmail2").focus();
		} else {
			txtmail.attr("readonly", true);
			$("#email_txt").text("ID/PW 분실 시 입력하신 E-Mail 주소로 ID/PW가 발송됩니다.").css("display", "block").css("color", "#999");
		}
	});
	
	$(document).on("blur", "#PlaceHolder1_txtWebID", function(){
		var id = $(this).val();		
		if(id == "") {
			$("#mem_id_error").text("아이디를 입력하지 않았습니다.").css("display", "block").css("color", "red");	
		} else if (id != "") {
			$("#mem_id_error").css("display", "none");
			//Ajax사용법
			$.ajax({
				// 가야할 서블릿 지정
				url: "memajax.bizpoll",
				// 방식 지정 [GET | POST]
				type: "POST",
				// 타입 지정
				dataType: "json",
				// 쿼리스트링과 같은 =에 공백X     //data를 dataTpye가방에 담아 type방식으로 url로 보냄
				data: "id=" + id,
				//성공했을때	
				success: function(data) {
					if(data.flag == "0") {
						$("#mem_id_error").text("중복된 아이디입니다.").css("display", "block").css("color", "red");
						$("#PlaceHolder1_hiddenId").val("F");
					} else {
						$("#mem_id_error").text("멋진 아이디입니다.").css("display", "block").css("color", "green");
						$("#PlaceHolder1_hiddenId").val("T");						
					}
				},
				//실패했을떄
				error: function(data) {
					alert("System Error!!!");
				} 
				
			});
		}
	});
	
</script>
</head>
<body>
	<div class="conContainer">
		<div class="con_900">
			<h2 class="title_r">UP 회원가입</h2>
			<div class="conbox mt20">
				<div class="box_b10 plr30 ptb35">
					<table width="100%" class="join_input bb1">
						<form action="memberinsert.bizpoll" name="frm_member" method="post"  id="frm_member">
							<tbody>
								<tr>
									<th>
										<span class="must">*</span>
										<label for="txtWebID">아이디</label>
									</th>
									<td>
										<input name="PlaceHolder1_txtWebID" type="text" maxlength="12" id="PlaceHolder1_txtWebID" class="input_txt01 input" style="ime-mode:disabled">
										<input name="PlaceHolder1_hiddenId" type="hidden" id="PlaceHolder1_hiddenId" value="F">
										<!-- <a href="#" class="btn_dgray3" id="idcheck">
											<span>중복확인</span>
										</a> -->
										<div id="mem_id_error" class="error">	dasdfasdf										
										</div>
									</td>
								</tr>
								<tr>
									<th>
										<span class="must">*</span>
										비밀번호
									</th>
									<td>
										<input name="PlaceHolder1_txtWebPwd" type="password" maxlength="16" id="PlaceHolder1_txtWebPwd" class="input_txt01 input">
										<span class="f_11p lgray">6~20 자 이내 숫자 + 영문</span>
										<div id="mem_pw_error" class="error">											
										</div>
									</td>
								</tr>
								<tr>
									<th>
										<span class="must">*</span>
										비밀번호 확인
									</th>
									<td>
										<input name="PlaceHolder1_txtWebPwdChk"  type="password"  maxlength="16"  id="PlaceHolder1_txtWebPwdChk"  class="input_txt01  input">
										<div id="pwchk_error" class="error">											
										</div>
									</td>
								</tr>
								<tr>
									<th>
										<span class="must">*</span>
										이름
									</th>
									<td>
										<input name="PlaceHolder1_txtCustName" type="text" id="PlaceHolder1_txtCustName" class="input_txt01  input">
										<span class="f_11p lgray">
											한글, 영문 이름 기재
										</span>
										<div id="name_error" class="error">											
										</div>
									</td>
								</tr>
								<tr>
									<th class="pt6">
										<span class="must">*</span>
										성별
									</th>
									<td>
										<table id="ct100_ContentPlaceHolder1_rbtnCustSex" border="0">
											<tbody>
												<tr>
													<td>
														<span class="rd">
															<input id ="PlaceHolder1_rbtnCustSex_0" type="radio" name="PlaceHolder1_rbtnCustSex" value="M"  checked>
															<label for="PlaceHolder1_rbtnCustSex_0">남성</label>
														</span>
													</td>
													<td>
														<span class="rd m130">
															<input id ="PlaceHolder1_rbtnCustSex_1" type="radio" name="PlaceHolder1_rbtnCustSex" value="F" >
															<label for="PlaceHolder1_rbtnCustSex_1">여성</label>
														</span>
													</td>
												</tr>											
											</tbody>										
										</table>
									</td>																
								</tr>
								<tr>
									<th>
										<span class="must">*</span>
										생년월일
									</th>
									<td>
										<div id="ct100_ContentPlaceHolder1_UpdatePane11">
											<p class="mb8">
												<input name="PlaceHolder1_txtBirthYear" type="text" id="PlaceHolder1_txtBirthYear" class="input_txt02 input" maxlength="4">년
												<input name="PlaceHolder1_txtBirthMonth" type="text" id="PlaceHolder1_txtBirthMonth" class="input_txt02 input" maxlength="2">월
												<input name="PlaceHolder1_txtBirthDay" type="text" id="PlaceHolder1_txtBirthDay" class="input_txt02 input" maxlength="2">일
												
											</p>
										</div>
										<div id="birth_error" class="error_2">											
										</div>
									</td>
								</tr>
								<tr>
									<th>
										<span class="must">*</span>
										휴대 전화번호
									</th>
									<td>
										<p class="mb8">
											<select name="PlaceHolder1_ddlCellNo1" id="PlaceHolder1_ddlCellNo1" class="tel_sel">
												<option value>선택</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
											</select>
											<span class="lgray2">-</span>
											<input name="PlaceHolder1_txtCellNo2" type="text" maxlength="4" id="PlaceHolder1_txtCellNo2" class="input_txt02 frontphonenumber input">
											<span class="lgray2 numberside">-</span>
											<input name="PlaceHolder1_txtCellNo3" type="text" maxlength="4" id="PlaceHolder1_txtCellNo3" class="input_txt02 lastphonenumber input">
										</p>
										<div id="phone_error" class="error_2">											
										</div>
									</td>
								</tr>
								<tr>
									<th>
										<span class="must">*</span>
										주소 (우편번호)
									</th>
									<td>
										<p>
											<input type="text" id="sample6_postcode" name="sample6_postcode" class="input_txt01 input" placeholder="우편번호" readonly >
											<a href="#" onclick="sample6_execDaumPostcode()" id="sample6_button" value="우편번호 찾기">우편번호 찾기</a><br>																		
										</p>
										<div id="postcode_error" class="error">											
										</div> 
									</td>
								</tr>
								<tr>
									<th>
										<span class="must">*</span>
										주소 (상세주소)
									</th>
									<td>
										<p>											
											<input type="text" id="sample6_address"  name="sample6_address" class="input_txt01 input" placeholder="주소" readonly >
											<input type="text" id="sample6_address2"  name="sample6_address2" class="input_txt01 input" placeholder="상세주소">											
										</p>
										<div id="add_error" class="error">											
										</div>
									</td>
								</tr>
								<tr>
									<th>
										<span class="must">*</span>
										E-Mail 주소										
									</th>
									<td>
										<p class="mb8">
											<input name="PlaceHolder1_txtEmail1" type="text" maxlength="60" id="PlaceHolder1_txtEmail1" class="input_txt01 input">
											<span class="lgray">@</span>
											<input name="PlaceHolder1_txtEmail2" type="text" maxlength="60" id="PlaceHolder1_txtEmail2" class="input_txt01 input">
											<select id="PlaceHolder1_selectEmail3" class="mail_sel" >
												<option value>이메일 선택</option>
												<option value="naver.com">naver.com</option>
												<option value="hamail.net">hamail.net</option>
												<option value="nate.com">nate.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="daum.net">daum.net</option>
												<option value="direct">직접 입력</option>
											</select>
										</p>
										<p>
											<span id="email_txt" class="f_11p lgray">ID/PW 분실 시 입력하신 E-Mail 주소로 ID/PW가 발송됩니다.</span>
										</p>
									</td>
								</tr>				
							</tbody>
						</form>
					</table>
					<div class="conBox mt20 mb40">
						<div class="fl">
							<a href="../index/index.bizpoll" class="btn_gray">								
							</a>
						</div>
						<div class="fr">
							<span id="btnRegist" class="btn_red4"  style="cursor:pointer;">
								<img alt="Go" src="image/new_member/btn_red_r.png" >
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../include/footer.jsp" %>