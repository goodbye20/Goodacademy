<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//String id = request.getParameter("id");
	//String pw = request.getParameter("pw");
	
	// 아래 body에서 바로 받을 수도 있다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>아이디 : <%=request.getParameter("id")%></li>
		<li>패스워드 : <%=request.getParameter("pw")%></li>
	</ul>
</body>
</html>