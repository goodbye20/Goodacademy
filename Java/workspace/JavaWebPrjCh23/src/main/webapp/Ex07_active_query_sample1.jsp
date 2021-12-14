<%@page import="kr.co.goodee39.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.goodee39.config.SqlSessionManager"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
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
	//vo.setId(1111);
	//vo.setEmail("aaa@aaa.com");
	vo.setGender("남자");

	List<MemberVO> list = null;
	int i = 0;
	try {
		list = sqlSession.selectList("member.activeSelect1", vo);

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

	<%
	for (MemberVO vo1 : list) {
	%>
	<p>
		이름 :
		<%=vo1.getName()%></p>
	<%
	}
	%>
</body>
</html>