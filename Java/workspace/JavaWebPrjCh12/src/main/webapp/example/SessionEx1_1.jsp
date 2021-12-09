<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("a","aaa");
	session.setAttribute("b","bbb");
	request.setAttribute("c","ccc");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 예제 첫 페이지입니다.</h1>
	<a href="${pageContext.request.contextPath}/SessionEx1Controller">이동</a>
	포워드가 아닌 리다이렉트로 보낼거기에 request는 소멸되어 전달 x
</body>
</html>