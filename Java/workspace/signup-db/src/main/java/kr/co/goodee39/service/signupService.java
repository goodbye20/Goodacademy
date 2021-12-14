package kr.co.goodee39.service;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.co.goodee39.conn.SqlSessionManager;

public class signupService {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public void signupMember(HttpServletRequest request) {
		try {
			request.setAttribute("list", sqlSession.selectList("signup.signupMemberList"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
