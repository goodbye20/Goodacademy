<%@page import="vo.BBSVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	List<BBSVO> list = (List<BBSVO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border: 1px solid #CCCCCC;
		border-collapse: collapse;
	}
	thead tr{
		font-weight: bold;
		text-align: center;
		background-color: #CCCCCC;
	}
	td {
		border: 1px solid #CCCCCC;
	}
	tbody tr:nth-child(2), tbody tr:nth-child(6), tbody tr:nth-child(10) {
		border-bottom: 2px solid #B3B3B3;
	}
</style>
</head>
<body>
	<table>
		<thead>
		<tr>
			<td>id</td>
			<td>title</td>
			<td>owner</td>
			<td>createdate</td>
			<td>content</td>
		</tr>
		</thead>
		<tbody>
		<%
		for(BBSVO vo : list){
		%>
		<tr>
			<td><%=vo.getId() %></td>
			<td><%=vo.getTitle() %></td>
			<td><%=vo.getOwner() %></td>
			<td><%=vo.getCreateDate() %></td>
			<td><%=vo.getContent() %></td>
		</tr>
		<%} %>
		</tbody>
	</table>
	<form action="test/test1_3.jsp">
	<button>생성</button>
	</form>
</body>
</html>