package kr.co.goodee39.service;



import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.co.goodee39.conn.SqlSessionManager;
import kr.co.goodee39.vo.UserVO;


public class LoginService {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
//	public UserVO getUser(HttpServletRequest request) {
//		UserVO vo = new UserVO();
//		if(request.getParameter("id") != null) {
//			vo.setUserid(request.getParameter("id"));			
//		}
//		if(request.getParameter("pw") != null) {
//			vo.setUserid(request.getParameter("pw"));	
//		}
//		// 검색했을시 아이디 패스워드가 없을시 vo는 null이 뜰수 있기때문에 vo2로
////		vo = sqlSession.selectOne("user.selectAccount", vo);
//		// 그냥 vo로 보내도 괜찮다.
//		UserVO vo2 = sqlSession.selectOne("user.selectAccount", vo);
//		
//		return vo2;
//	}
	
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("user.selectAccount", vo);
		}
		
		public void setUser(UserVO vo) {
			int i = sqlSession.insert("user.insertAccount", vo);
			if(i>0) {
				sqlSession.commit();
			}
		}
	

}