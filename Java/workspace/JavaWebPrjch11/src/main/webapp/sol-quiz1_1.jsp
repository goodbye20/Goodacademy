<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="sol-quiz1_2.jsp">
		<label for="name">이름 : </label>
		<input type="text" id="name" name="name" />
		<br>
		<label for="male">남자 : </label>
		<input type="radio" id="male" value="1" name="gender" />
		<br>
		<label for="name">여자 : </label>
		<input type="radio" id="female" value="2" name="gender" />
		<br>
		<button>전송</button>
	</form>
</body>
</html>