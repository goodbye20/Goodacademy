<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//	session.invalidate();
	// 세션을 삭제 시키는 코드
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${sessionScope.a}</h1>
	<h1>${sessionScope.b}</h1>
	<h1>${c}</h1>
</body>
</html>