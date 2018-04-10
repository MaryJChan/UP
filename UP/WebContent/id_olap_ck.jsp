<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 ID 중복체크</title>
<style type="text/css">
	body, div, ul {
		margin: 0;
		padding: 0;
		font-size: 1em;	
	}
	#popup {
		width: 200px;
		margin: 50px auto;
	}
</style>
<script type="text/javascript">
	function closeOK() {
		//나를 오픈시킨얘
		opener.document.frm_member.PlaceHolder1_txtWebPwd.focus();
		opener.document.frm_member.PlaceHolder1_hiddenId.value="T";
		self.close();
	}

	function closeNG() {		
		// ID 중복시 팝업창을 종료하고 아이디에 블록상태로 지정
		opener.document.frm_member.PlaceHolder1_txtWebID.select();
		opener.document.frm_member.PlaceHolder1_hiddenId.value="F";
		self.close();
	}
</script>
</head>
<body>
	<div id="popup">
		<!-- if 문 -->
		<c:choose>
			<c:when test="${flag == '0'}">
				이미 가입된 ID 입니다. <br>
				다른 ID를 입력해 주세요.<br>
				<button onclick="closeNG()">확인</button>
			</c:when>
			<c:when test="${flag == '1'}">
				사용 가능한 ID입니다.<br>
				<button onclick="closeOK()">확인</button>
			</c:when>
		</c:choose>
	</div>
</body>
</html>