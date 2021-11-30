package kr.co.goodee39.MVCService;

import javax.servlet.http.HttpServletRequest;

import kr.co.goodee39.DAO.DeptDAO;
import kr.co.goodee39.VO.DeptVO;
import kr.co.goodee39.connection.JDBCCreateConn;

public class example3Service {
	public void setDept(HttpServletRequest request) {
		try {
			DeptVO vo = new DeptVO();
			vo.setDeptno(Integer.parseInt(request.getParameter("deptno")));
			vo.setDname(request.getParameter("dname"));
			vo.setLoc(request.getParameter("loc"));
			
			DeptDAO dao = new DeptDAO();
			int i = dao.insertDept(JDBCCreateConn.getConn(), vo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

