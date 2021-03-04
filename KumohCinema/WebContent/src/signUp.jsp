<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String registe = (String)session.getAttribute("REGISTE");

	if(registe == "emailFail") {
		out.println("<script>alert('�̹� ���Ե� �̸��� �Դϴ�');</script>");
		session.removeAttribute("REGISTE");
	}
	else if(registe == "nameFail") {
		out.println("<script>alert('�̹� ���Ե� �̸� �Դϴ�');</script>");
		session.removeAttribute("REGISTE");
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�ݿ� �ó׸�</title>
    <link rel="styleSheet" href="../resources/css/signUpSheet.css">
</head>
<body>
    <jsp:include page="/include/header.jsp" flush="false"></jsp:include>

    <div class="container">
        <img id="title" src="../image/sign_up_title.png" alt="ȸ������ Ÿ��Ʋ">
        <form action="verify.jsp" method="post" id="verify" accept-charset="UTF-8">
	        <div class="info">
	            <ul>
	                <li><span>�̸�</span><input type="text" size="30" name="NAME"></li>
	                <li><span>�̸���</span><input type="email" size="30" name="EMAIL"></li>
	                <li><span>��й�ȣ</span><input type="password" size="30" name="PASSWORD"></li>
	                <li><span>��й�ȣ Ȯ��</span><input type="password" size="30" name="PWCHK"></li>
	                <li><span>��ȭ��ȣ</span><input type="tel" size="30" name="TEL"></li>
	            </ul>
	        </div>
	        <Input type="image" src="../image/cancel_btn.png" alt="��� ��ư" id="signupcancel" onclick="return false;">
	        <Input type="image" src="../image/sign_up_btn2.png" alt="ȸ������ ��ư" id="signupbtn" onclick="return false;">
        </form>
    </div>

    <jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
    
	<script src="../resources/js/signUpScript.js" charset="UTF-8"></script>
</body>
</html>