<%@page import="VO.testSol2VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	List<testSol2VO> list = (List<testSol2VO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<%for(testSol2VO vo : list){ %>
		<tr>
			<td><%=vo.getSid() %></td>
			<td><%=vo.getTitle() %></td>
			<td><%=vo.getOwner() %></td>
			<td><%=vo.getCreateDate() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>