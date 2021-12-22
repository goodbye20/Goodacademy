package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import conn.SqlSessionManager;
import vo.userVO;


public class userService {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	
	// 로그인 전 유저 정보가 맞는지 체크
	public boolean user_check(HttpServletRequest request) {
		userVO vo = new userVO();
		vo.setUserid(request.getParameter("userid"));
		vo.setPassword(request.getParameter("password"));
		
		int i = (Integer)sqlSession.selectOne("user.user_check", vo);
		return (i>0)?true:false;
	}
	
	// 아이디 여부 체크
	// 회원가입 아이디 중복 체크
	// 아이디/비밀번호 찾기 
	public boolean id_check(HttpServletRequest request) {
		userVO vo = new userVO();
		vo.setUserid(request.getParameter("userid"));
		
		int i = (Integer)sqlSession.selectOne("user.id_check", vo);
		return (i>0)?true:false;
	}
	
	// 등록된 데이터 가져오기
	public void getUser(HttpServletRequest request) {
		try {
			userVO vo = new userVO();
			vo.setUserid(request.getParameter("userid"));
			request.setAttribute("vo", sqlSession.selectOne("user.getUser", vo));				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 데이터 등록하기
	public void signUp(HttpServletRequest request) {
		try {
			userVO vo = new userVO();
			vo.setUserid(request.getParameter("userid"));
			vo.setPassword(request.getParameter("password"));
			vo.setName(request.getParameter("name"));

			int i = sqlSession.insert("user.insertUserList", vo);
			if (i > 0) {
				sqlSession.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
}


