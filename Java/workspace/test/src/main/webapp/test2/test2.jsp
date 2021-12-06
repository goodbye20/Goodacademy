<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Class.forName("org.mariadb.jdbc.Driver");
	String connect = "jdbc:mariadb://localhost:3310/scott";
	String user = "root";
	String password = "7227";
	Connection conn = DriverManager.getConnection(connect, user, password);
	
	String query = "select * from mydb2.bbs;";
	PreparedStatement pstmt = conn.prepareStatement(query);
	ResultSet rs = pstmt.executeQuery(query);
%>
<!DOCTYPE html>
<style>
th,tr,td {
    border: 1px solid black;
    }

</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>순번</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
		<%while(rs.next()) { %>
			<tr>
				<th><%=rs.getInt("sid")%></th>
				<td><%=rs.getString("title") %></td>
				<td><%=rs.getString("owner") %></td>
				<td><%=rs.getDate("createdate")%></td>
			</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>