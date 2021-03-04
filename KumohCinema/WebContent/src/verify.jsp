<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="DBManagement.DBManager"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	DBManager dm = new DBManager();
	String query = "";

    String name = request.getParameter("NAME");
    String email = request.getParameter("EMAIL");
    String pw = request.getParameter("PASSWORD");
    String tel = request.getParameter("TEL");
	
    query = "SELECT * FROM user";
	ResultSet rs = dm.doWithResult(query);
	if(rs != null)
		while(rs.next()){
	        if (rs.getString("userEmail").equals(email)) {
	        	session.setAttribute("REGISTE", "emailFail");
	    		response.sendRedirect("signUp.jsp");
	    		rs.close();
	    		dm.closeDB();
	            return;
	        }
	        if (rs.getString("userName").equals(name)) {
	        	session.setAttribute("REGISTE", "nameFail");
	    		response.sendRedirect("signUp.jsp");
	    		rs.close();
	    		dm.closeDB();
	            return;
	        }
		}
	
	query = "INSERT INTO user VALUES ('"+email+"','"+name+"',HEX(AES_ENCRYPT('"+pw+"','user')),'"+tel+"')";
	boolean res = dm.doWithoutResult(query);

	rs.close();
	dm.closeDB();
    
	if(res) {
		session.setAttribute("REGISTE", "success"); // 인증되었음 세션에 남김
	    response.sendRedirect("main.jsp"); // 인증 성공 시 재요청 url
	}
	else {
		session.setAttribute("REGISTE", "fail"); // 인증되었음 세션에 남김
	    response.sendRedirect("main.jsp"); // 인증 성공 시 재요청 url
	}
%>
</body>
</html>