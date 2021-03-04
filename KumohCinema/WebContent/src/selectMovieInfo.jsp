<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="DBManagement.DBManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="CinemaObjects.Movie" %>
<%@page import="CinemaObjects.Cast" %>
<%@page import="CinemaObjects.Review"%>
<%
	request.setCharacterEncoding("UTF-8");

	DBManager dm = new DBManager();
	String query = "";
	String query2 = "";

	String movie = "";
	
	switch(request.getParameter("MOVIE")){
		case "M1": movie = "악인전"; break;
		case "M2": movie = "알라딘"; break;
		case "M3": movie = "어벤져스: 엔드게임"; break;
		case "M4": movie = "기생충"; break;
		case "M5": movie = "어벤져스: 엔드게임"; break;
		case "M6": movie = "어린 의뢰인"; break;
		case "M7": movie = "뷰티풀 보이스"; break;
		case "M8": movie = "알라딘"; break;
		case "M9": movie = "알라딘"; break;
		case "M10": movie = "더 보이"; break;
		case "M11": movie = "시민 노무현"; break;
		case "M12": movie = "김군"; break;
		default: movie = request.getParameter("MOVIE"); break;
	}
	session.setAttribute("TITLE", movie);
	System.out.println(session.getAttribute("TITLE"));

	query = "SELECT * FROM movie WHERE movie.movieTitle='"+movie+"'";
	ResultSet rs = dm.doWithResult(query);
	
	query2 = "SELECT * FROM castinfo WHERE castinfo.movieTitle='"+movie+"'";
	ResultSet rs2 = dm.doWithResult(query2);
	
	if (rs.next()){
		String movieTitle = rs.getString("movieTitle");
		int year = rs.getInt("year");
		String country = rs.getString("country");
		String info = rs.getString("info");
		String bigImageUrl = rs.getString("bigImageUrl");
		String smallImageUrl = rs.getString("smallImageUrl");
		
		Movie m = new Movie(movieTitle, year, country, info, bigImageUrl, smallImageUrl);
		session.setAttribute("MOVIEINFO", m);
	}
	else {
		dm.closeDB();
		return;
	}
	if (rs2 != null){
		Cast[] castList;
		rs2.last();
		castList = new Cast[rs2.getRow()];
		rs2.beforeFirst();
		
		for(int i = 0; rs2.next(); i++){
			if(rs2.getInt("role") == 0) {
				session.setAttribute("DIRECTOR", rs2.getString("name"));
			}
			int castID = rs2.getInt("castID");
			String name = rs2.getString("name");
			String profileImage = rs2.getString("profileImage");
			String movieTitle = rs2.getString("movieTitle");
			
			String role = "";
			switch(rs2.getInt("role")) {
			case 0:
				role = "감독";
				break;
			case 1:
				role = "주연";
				break;
			case 2:
				role = "조연";
				break;
			}
			
			castList[i] = new Cast(castID, name, role, profileImage, movieTitle);
		}
		session.setAttribute("CASTS", castList);
		
		rs2.close();
	}

	String movieTitle = (String)session.getAttribute("TITLE");
	query ="SELECT * FROM review where movieTitle='"+movieTitle+"'";

	ResultSet revrs = dm.doWithResult(query);
    
    if(revrs != null) {
    	Review[] rvList;
    	revrs.last();
    	rvList = new Review[revrs.getRow()]; // resultSet크기 만큼의 List 생성
    	revrs.beforeFirst();
    	for(int i=0; revrs.next(); i++) {
    		String name = "";
    		
    		query = "SELECT * FROM user WHERE userEmail='"+revrs.getString("userEmail")+"'";
    		ResultSet rrs = dm.doWithResult(query);
    		if(rrs.next()) name = rrs.getString("userName");
    		
    		String content = revrs.getString("content");
    		
    		rvList[i] = new Review(movieTitle, name, content);
    		
    		rrs.close();
    	}
		session.setAttribute("ALLREVIEW", rvList); // 나의 예매 리스트 모두 전송
		
		revrs.close();
    }
    else {
        session.setAttribute("ALLREVIEW", "none"); // 아니면 none
    }
	
	rs.close();
	dm.closeDB();
	response.sendRedirect("movieInformation.jsp");
	%>