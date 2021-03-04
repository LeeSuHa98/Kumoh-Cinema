<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="DBManagement.DBManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="CinemaObjects.Reserve"%>
<%@page import="CinemaObjects.Review"%>
<%@page import="CinemaObjects.Movie" %>
<%@page import="CinemaObjects.Cast" %>
<%
	request.setCharacterEncoding("UTF-8");

	DBManager dm = new DBManager();
	String query = "";

	String movieTitle = (String)session.getAttribute("TITLE");
	String comment = request.getParameter("COMMENT");
	String email = (String)session.getAttribute("userEmail");
	query = "INSERT INTO review(content, userEmail, movieTitle) VALUES ('"+comment+"', '"+email+"', '"+movieTitle+"')";
	
	boolean rs = dm.doWithoutResult(query);
    
    if(rs) {
        session.setAttribute("SAVE", "success");
    }
    else {
        session.setAttribute("SAVE", "fail");
    }
    
	dm.closeDB();
	response.sendRedirect("selectMovieInfo.jsp?MOVIE="+movieTitle);
%>