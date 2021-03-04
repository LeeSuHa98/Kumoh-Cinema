<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<head>
    <link rel="styleSheet" href="../resources/css/baseSheet.css">
</head>
    
<%	if(session.getAttribute("user") != null) {%>
<form action="checkMe.jsp" method="get">
<div class="header" id="out">
    <Input type="image" id="logo" src="../image/logo.png" alt="�ݿ� �ó׸� �ΰ�" onclick="return false;">
    <img id="semi_logo" src="../image/semi_logo.png" alt="�μ� �ΰ�">
    <div class="logout">
        <ul>
            <li><Input type="text" id="user" name="MYNAME" value="${user} ��" readOnly></li>
            <li><Input type="image" class="header_btn" src="../image/logout_btn.png" alt="�α׾ƿ� ��ư" id="logoutbtn" onclick="return false;"></li>
            <li><Input type="image" class="header_btn" src="../image/my_page_btn.png" alt="���������� ��ư" style="margin: 0" id="mypage"></li>
        </ul>
    </div>
</div>
</form>

<script src="../resources/js/loginHeaderScript.js"></script>
<%	}
	else {%>
<form action="auth.jsp" method="get">
<div class="header" id="in">
    <Input type="image" id="logo" src="../image/logo.png" alt="�ݿ� �ó׸� �ΰ�" onclick="return false;">
    <img id="semi_logo" src="../image/semi_logo.png" alt="�μ� �ΰ�">
    <div class="login">
        <ul>
            <li><Input size="10" name="ID"></li>
            <li><Input type="password" size="10" name="PW"></li>
            <li><Input type="image" class="header_btn" src="../image/login_btn.png" alt="�α��� ��ư"></li>
            <li><Input type="image" class="header_btn" src="../image/sign_up_btn.png" alt="ȸ������ ��ư" id="signup" onclick="return false;"></li>
        </ul>
    </div>
</div>
</form>

<script src="../resources/js/logoutHeaderScript.js"></script>
<%	}
	if(session.getAttribute("LOGIN") == "fail") {
		out.println("<script>alert('�α��� ����!');</script>");
		session.removeAttribute("LOGIN");
	}

	if(session.getAttribute("REGISTE") == "success") {
		out.println("<script>alert('���������� ���ԵǾ����ϴ�');</script>");
		session.removeAttribute("REGISTE");
	}
	if(session.getAttribute("REGISTE") == "fail") {
		out.println("<script>alert('�� DB ����?');</script>");
		session.removeAttribute("REGISTE");
	}
%>