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
    // 0: ���� ���� ����� �� ��й�ȣ ���.
    String[] users = { "abcd", "knight", "elf" };

    // 1: form ���κ��� ���޵� �����͸� ������ ����.
    String name = request.getParameter("new_name");
    String email = request.getParameter("new_email");
    String pw = request.getParameter("new_pw");
    String pw_chk = request.getParameter("new_pw_chk");
    String tel = request.getParameter("new_tel");

    for (int i = 0; i < users.length; i++) { // DB���� �о�� ���Ե� ���̵��� ��
        if (users[i].equals(name)) {
    		response.sendRedirect("signUp.jsp");
            return;
        }
    }
    
    session.setAttribute("registeredUser", name); // �����Ǿ��� ���ǿ� ����
    response.sendRedirect("main.jsp"); // ���� ���� �� ���û url
%>

</body>
</html>