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
	<form action="ELJSTL-Quiz1_2.jsp">
	<ul>
		<li><label for="name">이름 : </label><input type="text" id="name" name="name" /></li>
		<li><label for="gender">남자 : </label><input type="radio" id="male" name="gender" value="남자" /></li>
		<li><label for="gender">여자 : </label><input type="radio" id="female" name="gender" value="여자"/></li>
		<li><button>전송</button></li>
	</ul>
		
	</form>
</body>
</html>