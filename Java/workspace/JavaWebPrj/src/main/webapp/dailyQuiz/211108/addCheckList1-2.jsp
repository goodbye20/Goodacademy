<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="java.sql.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String[] check = request.getParameterValues("check");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<% for(int i = 0; i < check.length; i++){
			out.println("<li>" + check[i] + "</li>");
		 } %>
	</ul>
</body>
</html>