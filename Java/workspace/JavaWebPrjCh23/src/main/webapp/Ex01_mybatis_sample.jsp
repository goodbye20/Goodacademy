<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="kr.co.goodee39.config.SqlSessionManager"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(); 
	
	int cnt  = 0;
	int cnt2 = 0;
	
	try {
		cnt = sqlSession.selectOne("member.getCount");
		cnt2 = sqlSession.selectOne("member.getNum");
	} catch (Exception e){
		e.printStackTrace();
	}
%>
<p>현재 로우 갯수 : <%=cnt %></p>
<p>출력한 숫자  : <%=cnt2 %></p>
</body>
</html>