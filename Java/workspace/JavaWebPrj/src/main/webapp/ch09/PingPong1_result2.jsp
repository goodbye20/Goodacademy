<%@page import="kr.co.goodee39.beans.PingPongBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	PingPongBean vo = (PingPongBean)request.getAttribute("vo");
	//                                           설정한 키값("vo")으로 받아줌
%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>id : <%=vo.getId() %></h1>
	<h1>pw : <%=vo.getPw() %></h1>
</body>
</html>