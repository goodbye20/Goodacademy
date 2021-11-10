<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/LoginSampleController">
	<h2>기본정보</h2>
	<label for="name">이름:</label><br>
	<input type="text" id="name" name="name"/><br>
	<label for="email">Email:</label><br>
	<input type="email" id="email" name="email"/><br>
	<label for="pw">비밀번호:</label><br>
	<input type="password" id="pw" name="pw"/><br>
	<input type="radio" id="adult" name="age" value="adult" />13살 이상
	<input type="radio" id="child" name="age" value="child" />13살 이하
	<h2>추가 정보</h2>
	<label for="main">주요업무:</label><br>
	<input type="text" id="main" name="main"/><br>
	<select name="work" id="work">
		<option value="Front-End Developer">Front-End Developer</option>
		<option value="Back-End Developer">Back-End Developer</option>
	</select><br>
	<p>관심 분야:</p>
	<input type="checkbox" id="interest1" name="interest" value="interest_development" />development<br>
	<input type="checkbox" id="interest2" name="interest" value="interest_design" />design<br>
	<input type="checkbox" id="interest3" name="interest" value="interest_business" />business<br>
	<br><button>가입하기</button>
	</form>
</body>
</html>