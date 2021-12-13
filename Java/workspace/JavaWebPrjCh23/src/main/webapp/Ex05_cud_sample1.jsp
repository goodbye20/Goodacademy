<%@page import="kr.co.goodee39.vo.MemberVO"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="kr.co.goodee39.config.SqlSessionManager"%>
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
	
	MemberVO vo = new MemberVO();
	vo.setId(1115);
	vo.setPassword("ffff");
	vo.setName("을지문덕");
	vo.setAge(40);
	vo.setGender("남자");
	vo.setEmail("eee@eee.com");
	
	int i = 0;
	try{
		i = sqlSession.insert("member.insertMember", vo);
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
