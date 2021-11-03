<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="form" action="#">
		<fieldset>
			<legend>페이지 이동</legend>
			<ul>
				<li>
					<select name="page" id="num">
						<option value="1">1페이지</option>
						<option value="2">2페이지</option>
						<option value="3">3페이지</option>
					</select>
				</li>
				<li>
					<button id="move">이동</button>
				</li>
			</ul>
		</fieldset>
	</form>
	<script type="text/javascript">
		document.getElementById("move").addEventListener("click", function(e){
			e.preventDefault();
			let num = document.getElementById("num").value;
			const form = document.getElementById("form");
			form.setAttribute("action", "1101quiz-selectTable1-"+num+".jsp");
			form.submit();
		});
	</script>
</body>
</html>