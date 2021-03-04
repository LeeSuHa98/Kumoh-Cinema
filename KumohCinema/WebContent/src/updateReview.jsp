<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="DBManagement.DBManager"%>
<%@page import="CinemaObjects.Review"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
	request.setCharacterEncoding("UTF-8");

	DBManager dm = new DBManager();
	String query = "";

	int review = Integer.parseInt(request.getParameter("SELECTREVIEW"));

    query = "SELECT * FROM review WHERE userEmail='"+session.getAttribute("userEmail")+"'";
    ResultSet rs = dm.doWithResult(query);
    
    for(int i=0; i<=review; i++) {
    	rs.next();
    }

    String content = request.getParameter("CONTENT");
    
    query = "UPDATE review SET content='"+content+"' WHERE reviewID="+rs.getInt("reviewID");
	
	if(!dm.doWithoutResult(query)) {
		session.setAttribute("UPDATE", "fail");
		dm.closeDB();
		return;
	}

	dm.closeDB();
    response.sendRedirect("checkMe.jsp?MYNAME="+session.getAttribute("user"));
%>