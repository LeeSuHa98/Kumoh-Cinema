<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="DBManagement.DBManager"%>
<%@page import="CinemaObjects.Reserve"%>
<%@page import="CinemaObjects.Review"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
	request.setCharacterEncoding("UTF-8");

	DBManager dm = new DBManager();
	String query = "";

	// ���� Ȯ��
    String name = request.getParameter("MYNAME").split(" ")[0];
    
    query = "SELECT userEmail FROM user WHERE userName = '"+name+"'";
    ResultSet nameRS = dm.doWithResult(query);
    String myEmail = "";
    if(nameRS.next()) myEmail = nameRS.getString("userEmail");
    
    query = "SELECT * FROM reserve WHERE userEmail = '"+myEmail+"'";
    ResultSet resRS = dm.doWithResult(query);
    
    if(resRS != null) {
    	Reserve[] rsvList;
		resRS.last();
		rsvList = new Reserve[resRS.getRow()]; // resultSetũ�� ��ŭ�� List ����
		resRS.beforeFirst();
    	for(int i=0; resRS.next(); i++) {
    		String date = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(resRS.getTimestamp("date"));
    		String region = resRS.getString("region");
    		String seats = resRS.getString("seats");
    		int totalPrice = resRS.getInt("totalPrice");
    		
    		query = "SELECT smallImageUrl FROM movie WHERE movieTitle = '"+resRS.getString("movieTitle")+"'";
    		ResultSet url = dm.doWithResult(query);
    		String smallImageUrl = "";
    	    if(url.next()) smallImageUrl = url.getString("smallImageUrl");
    		url.close();
    		
    		rsvList[i] = new Reserve(date, region, seats, totalPrice, smallImageUrl);
    		
    		session.setAttribute("MYRESERVE", rsvList); // ���� ���� ����Ʈ ��� ����
    	}
    }
    else {
        session.setAttribute("MYRESERVE", "none"); // �ƴϸ� none
    }
    
    // ���� Ȯ��
    query = "SELECT * FROM review WHERE userEmail = '"+myEmail+"'";
    ResultSet revRS = dm.doWithResult(query);
    
    if(revRS != null) {
    	Review[] rvList;
    	revRS.last();
    	rvList = new Review[revRS.getRow()]; // resultSetũ�� ��ŭ�� List ����
		revRS.beforeFirst();
    	for(int i=0; revRS.next(); i++) {
    		String movieTitle = revRS.getString("movieTitle");
    		String content = revRS.getString("content");
    		
    		rvList[i] = new Review(movieTitle, name, content);
    		
    		session.setAttribute("MYREVIEW", rvList); // ���� ���� ����Ʈ ��� ����
    	}
    }
    else {
        session.setAttribute("MYREVIEW", "none"); // �ƴϸ� none
    }

    nameRS.close();
    resRS.close();
    revRS.close();
	dm.closeDB();
    response.sendRedirect("myPage.jsp");
%>