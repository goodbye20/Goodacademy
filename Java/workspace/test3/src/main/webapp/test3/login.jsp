<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<form action="${pageContext.request.contextPath}/loginController" method="post">
			<label for="userid">아이디 : </label><input type="text" placeholder="ID" name="userid"><br>
			<label for="password">패스워드 : </label><input type="password" placeholder="password" name="password"><br>
			<input type="submit" value="로그인"> 
			<input type="reset" value="리셋"> <br>
				<a href="${pageContext.request.contextPath}/moveSignupController">회원 가입하기</a><br>
			<a href="${pageContext.request.contextPath}/movefindIdcontroller">아이디/비밀번호를 잊어버리셨나요?</a>
	</form>
</body>
</html>