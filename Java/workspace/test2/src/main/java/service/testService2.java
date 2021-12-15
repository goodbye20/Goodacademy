package service;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import conn.SqlSessionManager;

public class testService2 {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public void insertBBSVOList(HttpServletRequest request) {
		try {
			request.setAttribute("list", sqlSession.insert("bbs.insertMemberList"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
