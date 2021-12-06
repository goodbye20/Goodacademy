<%@page import="VO.test1VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
	List<test1VO> list = (List<test1VO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for(test1VO vo : list){
%>
		<h1>이름 : <%=vo.getUname()%></h1>
		<h1>나이 : <%=vo.getAge()%></h1>
		<h1>인사말 : <%=vo.getComments()%></h1>
<%
	}
%>
</body>
</html>