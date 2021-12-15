<%@page import="kr.co.goodee39.conn.SqlSessionManager"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="kr.co.goodee39.vo.signupVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
	List<signupVO> list = (List<signupVO>)request.getAttribute("list");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	signupVO vo = new signupVO();
	
	
	int i = 0;
	try{
		i = sqlSession.insert("signup.signupMemberList", vo);
		if(i>0){
			sqlSession.commit();
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<p> 행이 <%=i %>개 입력되었습니다. </p>
</body>
</html>