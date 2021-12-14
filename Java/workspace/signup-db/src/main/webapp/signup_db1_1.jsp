<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>아래와 같은 회원가입 창을 만들고 데이터를 디비에 넣는 로직을 작성하라</p>
	<form action="${pageContext.request.contextPath}/signup_dbController">
		<ul>
			<li><label for="">아이디 : </label><input type="text" id="id"
				name="id" /></li>
			<li><label for="">패스워드 : </label><input type="password" id="pw"
				name="pw" /></li>
			<li><label for="">이름 : </label><input type="text" id="name"
				name="name" /></li>
			<li><label for="">나이 : </label><input type="text" id="age"
				name="age" /></li>
			<li><label for="">성별 : </label><input type="text" id="gender"
				name="gender" /></li>
			<li><label for="">이메일 : </label><input type="text" id="email"
				name="email" /></li>
		</ul>
		<button>가입</button>
	</form>
</body>
</html>