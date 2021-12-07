package Service;

import javax.servlet.http.HttpServletRequest;

import DAO.testSol2DAO;
import connection.JDBCCreateConn;

public class testSol2Service {
	public void getBBSVOList(HttpServletRequest request) {
		try {
			testSol2DAO dao = new testSol2DAO();
			request.setAttribute("list", dao.selectBBSList(JDBCCreateConn.getConn()));
		} catch (Exception e){
			e.printStackTrace();
		}
	}
}
