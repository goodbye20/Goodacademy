<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
//	String data1 = (String)request.getAttribute("data1");
//	String data2 = (String)request.getAttribute("data2");
//	String data1 = request.getParameter("data1");
//	String data2 = request.getParameter("data2");
	String data1 = (String)session.getAttribute("data1");
	String data2 = (String)session.getAttribute("data2");
	// 서블릿에서 set으로 설정해둔 값을 get으로 받아온 형식
	// 중요한 부분 request는 생존영역이 재요청 전까지만 생존하기 때문에
	// forward로는 생존해서 바로 전달이 되나, redirect로는 일반적으론 소멸해서 쿼리(getParam(스트링값)로)를 통해 보내줘야함
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>이곳은 Session방식을 확용한 데이터 전달 결과 페이지입니다.</h1>
	<p>data1 : <%=data1 %></p>
	<p>data2 : <%=data2 %></p>
</body>
</html>