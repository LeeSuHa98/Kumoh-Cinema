<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
        <form action="verify.jsp" method="post" id="verify">
	        <div class="info">
	            <ul>
	                <li><span>�̸�</span><input type="text" size="30" name="new_name"></li>
	                <li><span>�̸���</span><input type="email" size="30" name="new_email"></li>
	                <li><span>��й�ȣ</span><input type="password" size="30" name="new_pw"></li>
	                <li><span>��й�ȣ Ȯ��</span><input type="password" size="30" name="new_pw_chk"></li>
	                <li><span>��ȭ��ȣ</span><input type="tel" size="30" name="new_tel"></li>
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