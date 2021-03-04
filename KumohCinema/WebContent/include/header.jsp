<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<head>
    <link rel="styleSheet" href="../resources/css/baseSheet.css">
</head>
    
<%	if(session.getAttribute("user") != null) {%>
<form action="checkMe.jsp" method="get">
<div class="header" id="out">
    <Input type="image" id="logo" src="../image/logo.png" alt="금오 시네마 로고" onclick="return false;">
    <img id="semi_logo" src="../image/semi_logo.png" alt="부속 로고">
    <div class="logout">
        <ul>
            <li><Input type="text" id="user" name="MYNAME" value="${user} 님" readOnly></li>
            <li><Input type="image" class="header_btn" src="../image/logout_btn.png" alt="로그아웃 버튼" id="logoutbtn" onclick="return false;"></li>
            <li><Input type="image" class="header_btn" src="../image/my_page_btn.png" alt="마이페이지 버튼" style="margin: 0" id="mypage"></li>
        </ul>
    </div>
</div>
</form>

<script src="../resources/js/loginHeaderScript.js"></script>
<%	}
	else {%>
<form action="auth.jsp" method="get">
<div class="header" id="in">
    <Input type="image" id="logo" src="../image/logo.png" alt="금오 시네마 로고" onclick="return false;">
    <img id="semi_logo" src="../image/semi_logo.png" alt="부속 로고">
    <div class="login">
        <ul>
            <li><Input size="10" name="ID"></li>
            <li><Input type="password" size="10" name="PW"></li>
            <li><Input type="image" class="header_btn" src="../image/login_btn.png" alt="로그인 버튼"></li>
            <li><Input type="image" class="header_btn" src="../image/sign_up_btn.png" alt="회원가입 버튼" id="signup" onclick="return false;"></li>
        </ul>
    </div>
</div>
</form>

<script src="../resources/js/logoutHeaderScript.js"></script>
<%	}
	if(session.getAttribute("LOGIN") == "fail") {
		out.println("<script>alert('로그인 실패!');</script>");
		session.removeAttribute("LOGIN");
	}

	if(session.getAttribute("REGISTE") == "success") {
		out.println("<script>alert('정상적으로 가입되었습니다');</script>");
		session.removeAttribute("REGISTE");
	}
	if(session.getAttribute("REGISTE") == "fail") {
		out.println("<script>alert('엥 DB 오류?');</script>");
		session.removeAttribute("REGISTE");
	}
%>