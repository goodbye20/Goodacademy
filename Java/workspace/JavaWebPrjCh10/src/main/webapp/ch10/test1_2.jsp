<%@page import="kr.co.goodee39.VO.test1VO"%>
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
	<ul>
<%
	for(test1VO vo : list){
%>
		<li><h3>이름 : <%=vo.getUname()%>  나이 : <%=vo.getAge()%> 인사말 : <%=vo.getComments()%></h3></li>
<%
	}
%>
	</ul>
</body>
</html>