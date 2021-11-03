<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="#">
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
					<button id="move" type="button">이동</button>
				</li>
			</ul>
		</fieldset>
	</form>
	<script type="text/javascript">
		document.getElementById("move").addEventListener("click", function(){
			let num = document.getElementById("num").value;
			if(num == "1"){
				location.href = "1101quiz-selectTable1-1.jsp?num="+num;
			} else if(num == "2"){
				location.href = "1101quiz-selectTable1-2.jsp?num="+num;			
			} else {
				location.href = "1101quiz-selectTable1-3.jsp?num="+num;
			}
		});
	</script>
</body>
</html>