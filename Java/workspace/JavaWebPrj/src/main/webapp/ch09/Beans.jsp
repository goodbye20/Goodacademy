<%@page import="kr.co.goodee39.beans.LoginBeans"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="loginbean" class="kr.co.goodee39.beans.LoginBeans" scope="request"/>
<jsp:setProperty name="loginbean" property="id" value="qwer"/>
<jsp:setProperty name="loginbean" property="pw" value="1234"/>
<%
	//LoginBean lb = new LoginBean();
	//loginbean.setId("qwer");
	//request.setAttribute("loginbean", lb);
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%=loginbean.getId()%></h2>
	<h2>
		<jsp:getProperty property="pw" name="loginbean"/>
	</h2>
</body>
</html>