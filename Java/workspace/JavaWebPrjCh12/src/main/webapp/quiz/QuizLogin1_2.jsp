<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${userId.id}</p>
	<p>${userPw.pw}</p>
	<c:choose>
		<c:when test="">
			<h1>로그인 되셨습니다.</h1>
			<h2>환영합니다.</h2>
		</c:when>
		<c:otherwise>
			<h1>로그인에 실패하였습니다.</h1>
			<a href="QuizLogin1_1.jsp">뒤로가기</a>
		</c:otherwise>
	</c:choose>
</body>
</html>