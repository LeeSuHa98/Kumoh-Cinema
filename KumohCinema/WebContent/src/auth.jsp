<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="DBManagement.DBManager"%>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<body>
<%
	DBManager dm = new DBManager();
	String query = "";

    String id = request.getParameter("ID");
    String pw = request.getParameter("PW");

    query = "SELECT userEmail, userName, AES_DECRYPT(UNHEX(password),'user') FROM user";
	ResultSet rs = dm.doWithResult(query);
	if(rs != null)
		while(rs.next())
	        if (rs.getString("userEmail").equals(id) && rs.getString("AES_DECRYPT(UNHEX(password),'user')").equals(pw)) {
	            session.setAttribute("user", rs.getString("userName"));
	            session.setAttribute("userEmail",rs.getString("userEmail"));
	            response.sendRedirect("main.jsp"); // 인증 성공 시 재요청 url
	    		rs.close();
	    		dm.closeDB();
	            return;
	        }

	rs.close();
	dm.closeDB();
	
	session.setAttribute("LOGIN", "fail");
	response.sendRedirect("main.jsp");
%>
</body>
</html>