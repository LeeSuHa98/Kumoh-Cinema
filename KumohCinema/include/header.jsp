<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<head>
    <link rel="styleSheet" href="../resources/css/baseSheet.css?ver=2.0">
</head>
    
<div class="header" id="in" style="display:block">
    <Input type="image" id="logo" src="../image/logo.png" alt="금오 시네마 로고">
    <img id="semi_logo" src="../image/semi_logo.png" alt="부속 로고">
    <div class="login">
        <ul>
            <li><Input size="10" name="id"></li>
            <li><Input type="password" size="10" name="pw"></li>
            <li><Input type="image" class="header_btn" src="../image/login_btn.png" alt="로그인 버튼" id="loginbtn"></li>
            <li><Input type="image" class="header_btn" src="../image/sign_up_btn.png" alt="회원가입 버튼" id="signup"></li>
        </ul>
    </div>
</div>

<div class="header" id="out" style="display:none">
    <Input type="image" id="logo" src="../image/logo.png" alt="금오 시네마 로고">
    <img id="semi_logo" src="../image/semi_logo.png" alt="부속 로고">
    <div class="logout">
        <ul>
            <li>${registeredUser} 님</li>
            <li><Input type="image" class="header_btn" src="../image/logout_btn.png" alt="로그아웃 버튼"></li>
            <li><Input type="image" class="header_btn" src="../image/my_page_btn.png" alt="마이페이지 버튼" style="margin: 0"></li>
        </ul>
    </div>
</div>

<%
	if(session.getAttribute("registeredUser") == null) {
		out.println("<script>document.getElementById('in').style.display = 'block';</script>");
		out.println("<script>document.getElementById('out').style.display = 'none';</script>");
	}
	else {
		out.println("<script>document.getElementById('in').style.display = 'none';</script>");
		out.println("<script>document.getElementById('out').style.display = 'block';</script>");
	}
%>
    
<script src="../resources/js/headerScript.js"></script>