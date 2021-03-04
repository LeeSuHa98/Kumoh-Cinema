<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("user");
	session.removeAttribute("userEmail");
	response.sendRedirect("main.jsp");
%>