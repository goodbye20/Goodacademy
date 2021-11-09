<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String data1 = request.getParameter("data1");
	String data2 = request.getParameter("data2");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>이곳은 servletRedirect방식으로 데이터 값을 받아온 페이지입니다.</h1>
	<p>data1 : <%=data1 %></p>
	<p>data2 : <%=data2 %></p>
</body>
</html>