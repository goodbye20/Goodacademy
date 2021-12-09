<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<h1>사이트 로고</h1>
		<form action="${pageContext.request.contextPath}/QuizLoginController" method="post">
			<ul>
				<li><input type="text" name="id" id="id" placeholder="ID" /></li>
				<li><input type="pw" name="pw" id="pw" placeholder="password"/></li>
				<li><input type="checkbox" name="remember" id="remember"/></li>
				<li><button>Login</button></li>
			</ul>	
		</form>
		<ul>
			<li><a href="#">비밀번호를 잃어버리셨나요?</a></li>
			<li>회원이 아니신가요? <a href="#">회원가입</a></li>
		</ul>
		</div>
	</div>
</body>
</html>