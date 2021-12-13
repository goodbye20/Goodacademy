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
	
	MemberVO vo2 = new MemberVO();
	vo2.setName("강감찬");
	vo2.setId(1115);
	
	MemberVO vo3 = new MemberVO();
	vo3.setName("강감찬");
	
	MemberVO vo4 = new MemberVO();
	vo4.setId(1115);
	vo4.setPassword("ffff");
	vo4.setName("을지문덕");
	vo4.setAge(40);
	vo4.setGender("남자");
	vo4.setEmail("eee@eee.com");
	
	int i = 0;
	try{
		 //i = sqlSession.update("member.updateMember", vo2);
		 //i = sqlSession.delete("member.deleteMember", vo3);
		i = sqlSession.insert("member.insertMember2", vo4);
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
