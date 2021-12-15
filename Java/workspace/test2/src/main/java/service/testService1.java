package service;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import conn.SqlSessionManager;


public class testService1 {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public void getBBSVOList(HttpServletRequest request) {
		try {
			request.setAttribute("list", sqlSession.selectList("bbs.selectBBSList"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
