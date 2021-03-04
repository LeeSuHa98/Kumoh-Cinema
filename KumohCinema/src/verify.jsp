<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
    // 0: 인증 가능 사용자 및 비밀번호 목록.
    String[] users = { "abcd", "knight", "elf" };

    // 1: form 으로부터 전달된 데이터를 변수에 저장.
    String name = request.getParameter("new_name");
    String email = request.getParameter("new_email");
    String pw = request.getParameter("new_pw");
    String pw_chk = request.getParameter("new_pw_chk");
    String tel = request.getParameter("new_tel");

    for (int i = 0; i < users.length; i++) { // DB에서 읽어온 가입된 아이디들과 비교
        if (users[i].equals(name)) {
    		response.sendRedirect("signUp.jsp");
            return;
        }
    }
    
    session.setAttribute("registeredUser", name); // 인증되었음 세션에 남김
    response.sendRedirect("main.jsp"); // 인증 성공 시 재요청 url
%>

</body>
</html>