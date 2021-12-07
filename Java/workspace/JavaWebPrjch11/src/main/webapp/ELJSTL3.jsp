<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 겹치면 request -> session -> app 순서
	session.setAttribute("aaa", "dddddd");
	request.setAttribute("aaa", "aaaaaa");
	session.setAttribute("bbb", "bbbbbb");
	application.setAttribute("ccc", "cccccc");
	application.setAttribute("aaa", "eeeeee");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${aaa}</h1>
	<h1>${bbb}</h1>
	<h1>${ccc}</h1>
	<!-- 우선 순위를 무시하고 원하는 값을 불러오고 싶을때는 scope를 지정하여 불러옴-->
	<h1>${sessionScope.aaa}</h1>
	<h1>${applicationScope.aaa}</h1>
</body>
</html>