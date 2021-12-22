<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>아이디 찾기 페이지</h2>
	<form action="${pageContext.request.contextPath}/findIdController">
			<label for="userid">아이디 : </label><input type="text" placeholder="찾으실 id 입력" name="userid"><br>		
			<input type="submit" value="찾기">
	</form>
</body>
</html>