<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	ul {
		list-style-type: none;
	}
	
	.btn {
		box-sizing: border-box;
		border : 2px solid red;
		border-radius: 0.6rem;
		color: red;
		display: flex;
		cursor: pointer;
		align-self: center;
		font-size: 1rem;
		font-weight: 700;
		line-height: 1;
		margin: 20px;
		padding: 1.2rem 2.0rem;
		text-decoration: none;
		text-align: center;
		text-transform: uppercase;
	}
</style>
</head>
<body>
	<ul>
		<li><button class="btn first" onclick="movepage('home')">HOME</button></li>
		<li><button class="btn first" onclick="movepage('공지사항')">공지사항</button></li>
		<li><button class="btn first" onclick="movepage('BBS')">BSS</button></li>
	</ul>
	
	<script type="text/javascript">
		function movepage(str) {
			location.href = "1101quiz-locatHref1-2.jsp?title="+str;
			// ?는 url(path까지)과 query 사이의 구분자로 볼수 있음.
			// query부분은 request.parameter을 통해 여러 정보들을 받아볼수 있음
			// quiz1에서 쿼르스트링으로 보낸걸 quiz1_1에서 getParamter로 받아서 title이란 변수에 넣어주고 사용

		}
	</script>
</body>
</html>