package Service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import DAO.test1DAO;
import VO.test1VO;
import connection.JDBCCreateConn;


public class test1Service {
	public void getEmpList(HttpServletRequest request) {
		try {
		test1DAO dao = new test1DAO();
		List<test1VO> list = dao.getEmpList(JDBCCreateConn.getConn());
		
		
		request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
