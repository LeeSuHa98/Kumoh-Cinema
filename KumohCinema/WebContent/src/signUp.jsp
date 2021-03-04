<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String registe = (String)session.getAttribute("REGISTE");

	if(registe == "emailFail") {
		out.println("<script>alert('이미 가입된 이메일 입니다');</script>");
		session.removeAttribute("REGISTE");
	}
	else if(registe == "nameFail") {
		out.println("<script>alert('이미 가입된 이름 입니다');</script>");
		session.removeAttribute("REGISTE");
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>금오 시네마</title>
    <link rel="styleSheet" href="../resources/css/signUpSheet.css">
</head>
<body>
    <jsp:include page="/include/header.jsp" flush="false"></jsp:include>

    <div class="container">
        <img id="title" src="../image/sign_up_title.png" alt="회원가입 타이틀">
        <form action="verify.jsp" method="post" id="verify" accept-charset="UTF-8">
	        <div class="info">
	            <ul>
	                <li><span>이름</span><input type="text" size="30" name="NAME"></li>
	                <li><span>이메일</span><input type="email" size="30" name="EMAIL"></li>
	                <li><span>비밀번호</span><input type="password" size="30" name="PASSWORD"></li>
	                <li><span>비밀번호 확인</span><input type="password" size="30" name="PWCHK"></li>
	                <li><span>전화번호</span><input type="tel" size="30" name="TEL"></li>
	            </ul>
	        </div>
	        <Input type="image" src="../image/cancel_btn.png" alt="취소 버튼" id="signupcancel" onclick="return false;">
	        <Input type="image" src="../image/sign_up_btn2.png" alt="회원가입 버튼" id="signupbtn" onclick="return false;">
        </form>
    </div>

    <jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
    
	<script src="../resources/js/signUpScript.js" charset="UTF-8"></script>
</body>
</html>