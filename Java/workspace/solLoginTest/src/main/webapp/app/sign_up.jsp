<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	ul, li {
		list-style-type: none;
	}	
</style>
</head>
<body>
	<form id="form" action="${pageContext.request.contextPath}/SignUpResultController">
	<ul>
		<li>
			<label for="id">아이디 : </label>
			<input type="text" id="id" name="id" />
		</li>
		<li>
			<label for="pw">패스워드: </label>
			<input type="password" name="pw" id="pw" />
		</li>
		<li>
			<label for="pwd">패스워드 확인 : </label>
			<input type="password" name="pwd" id="pwd" />
		</li>
		<li>
			<label for="name">이름 : </label>
			<input type="text" name="name"	id="name" />
		</li>
		<li>
			<button id="btn">등록</button>
		</li>
	</ul>
	</form>
	<script>
		const form = document.getElementById("form");
	
		document.getElementById("btn").addEventListener("click", function(e){
			// 위에 버튼 타입을 버튼으로해주면 e.preventDefault();해줄 필요없음
			e.preventDefault();
			
			// 위에서 받으면 각각의 값이 아니게되서 꼭 안에서 받아줘야함
			let pw = document.getElementById("pw").value;
			let pwd = document.getElementById("pwd").value;
			
			if(pw != pwd){
				alert("패스워드가 일치하지 않습니다.");
			} else {
				form.submit();
			}
		});
	</script>
</body>
</html>