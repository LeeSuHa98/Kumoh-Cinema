<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="DBManagement.DBManager"%>
<%@page import="java.sql.ResultSet" %>
    
<%
	//좌석
	int i=1;
	String a="";
	while(request.getParameter("SEAT"+i)!=null){
		a+=request.getParameter("SEAT"+i)+" ";
		i++;
	}
	
	//가격
	int people=Integer.parseInt(request.getParameter("people"));
	int younger=Integer.parseInt(request.getParameter("younger"));
	int totalPrice=people*10000+younger*5000;
	pageContext.setAttribute("totalPrice",totalPrice);
	
	//시간
	String time=request.getParameter("ONTIME");

	DBManager dm = new DBManager();
	String query = "";

	/*
	reserveID	int
	region		varchar
	date		timestamp
	seats		varchar
	totalPrice	int
	userEmail	varchar
	movieTitle	varchar
	*/
	
	String region = (String)session.getAttribute("region");
	String date=(String)session.getAttribute("date")+" "+time+":00";
	String seats=a;
	String userEmail=(String)session.getAttribute("userEmail");
	String movieTitle = (String)session.getAttribute("movieTitle");
    query = "INSERT INTO reserve(region,date,seats,totalPrice,userEmail,movieTitle) VALUES('"+region+"', '"+date+"', '"+seats+"', "+totalPrice+", '"+userEmail+"', '"+movieTitle+"')";
	
    dm.doWithoutResult(query);
    session.setAttribute("CHECKINSERT", "success");
	
	session.removeAttribute("region");
	session.removeAttribute("date");
	session.removeAttribute("movieTitle");
	
	dm.closeDB();
	
	response.sendRedirect("main.jsp");
%>