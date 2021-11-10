<%@page import="kr.co.goodee39.beans.PingPongBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	PingPongBean vo = (PingPongBean)request.getAttribute("vo");

//	RequestDispatcher rdp = request.getRequestDispatcher("/PingPongServletController2");
//	rdp.forward(request, response);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>id : <%=vo.getId() %></h2>
	<h2>pw : <%=vo.getPw() %></h2>
	<a href="<%=request.getContextPath()%>/PingPongServletController2?id=<%=vo.getId()%>&pw=<%=vo.getPw()%>">이동</a>
</body>
</html>