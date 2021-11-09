<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/ServletRedirectController">
		<ul>
			<li><label for="data1"></label>데이타1<input type="text" id="data1" name="data1" /></li>
			<li><label for="data2"></label>데이타2<input type="text" id="data2" name="data2" /></li>
			<li><button>전송</button></li>
		</ul>
	</form>
	<a href="<%=request.getContextPath() %>/ServletRedirectController?data1=abcd&data2=1234">전송</a>
</body>
</html>