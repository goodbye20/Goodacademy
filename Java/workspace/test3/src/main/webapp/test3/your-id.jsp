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
	<h1>${vo.name}님의 아이디는 다음과 같습니다.</h1>
	<h4>아이디 : ${vo.userid}</h4>
	<h4>패스워드 : ${vo.password}</h4>
</body>
</html>