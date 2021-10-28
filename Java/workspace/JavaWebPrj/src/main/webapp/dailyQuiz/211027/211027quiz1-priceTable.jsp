<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int julyRent = 10200;
int augRent = 15000;
int sepRent = 20000;

int julyProduct = 14000;
int augProduct = 7500;
int sepProduct = 13000;

int julySource = 3500;
int augSource = 5000;
int sepSource = 7000;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#container {
	width: 600px;
}

h1 {
	background-color: skyblue;
}

table {
	border: 1px solid black;
	width: 100%;
	text-align: center;
}

tr, td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<div id="container">
		<h1>2021 하반기 월별 경비 집계표</h1>
		<table>
			<thead>
				<tr>
					<td>구분</td>
					<td>7월</td>
					<td>8월</td>
					<td>9월</td>
					<td>합계</td>
					<td>평균</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>전시장 대여료</td>
					<td><%=julyRent%></td>
					<td><%=augRent%></td>
					<td><%=sepRent%></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>전시 물품 구입</td>
					<td><%=julyProduct%></td>
					<td><%=augProduct%></td>
					<td><%=sepProduct%></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>작품 재료 구입</td>
					<td><%=julySource%></td>
					<td><%=augSource%></td>
					<td><%=sepSource%></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td>합계</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tfoot>
		</table>
	</div>

	<script type="text/javascript">
		
	</script>
</body>
</html>