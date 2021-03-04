<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="DBManagement.DBManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="CinemaObjects.Movie" %>
<%
	request.setCharacterEncoding("UTF-8");

	DBManager dm = new DBManager();
	String query = "";

	query = "SELECT movieTitle, age FROM movie";
	ResultSet rs = dm.doWithResult(query);
	
	if (rs != null){
		Movie[] list;
		rs.last();
		list = new Movie[rs.getRow()];
		rs.beforeFirst();
		
		for(int i = 0; rs.next(); i++){
			int age = rs.getInt("age");
			String title = rs.getString("movieTitle");
			System.out.println(age);
			
			list[i] = new Movie(title, 0, "", "", "", "");
			list[i].setAge(age);
		}
		session.setAttribute("MOVIELIST", list); // 나의 예매 리스트 모두 전송
		
		rs.close();
	}
	else {
		return;
	}
	
	dm.closeDB();
	
	response.sendRedirect("reservation1.jsp");
%>