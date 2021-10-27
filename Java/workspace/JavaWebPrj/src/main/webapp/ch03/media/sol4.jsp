<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String locale = "even";
String bgColor = "blue";
String fontColor = "white";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#container {
	text-align: center;
	color: #2b2b2b;
}

table {
	width: 200px;
	margin: 0 auto;
	border-collapse: collapse;
}

td {
	text-align: left;
	padding: 10px;
	padding-left: 20px;
}

table tr:nth-child( <%=locale%>) {
	background-color: <%=bgColor%>;
	color: <%=fontColor%>
}
</style>
</head>
<body>
	<div id="container">
		<h1>건강에 좋은 식품</h1>
		<table border="1">
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
			<tr>
				<td>블루베리</td>
			</tr>
		</table>
	</div>
</body>
</html>