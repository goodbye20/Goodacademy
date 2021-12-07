package Service;

import javax.servlet.http.HttpServletRequest;

import DAO.testSolDAO;
import connection.JDBCCreateConn;

public class testSolService {
	public void getMember(HttpServletRequest request) {
		try {
			testSolDAO dao = new testSolDAO();
			request.setAttribute("vo", dao.selectMember(JDBCCreateConn.getConn()));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
