package kr.co.goodee39.MVCService;

import javax.servlet.http.HttpServletRequest;

import kr.co.goodee39.DAO.GuestDAO;
import kr.co.goodee39.connection.JDBCCreateConn;

public class MVC3service {
	public void getCount(HttpServletRequest request) {
		try {
			GuestDAO dao = new GuestDAO();
			int i = dao.insertCount(JDBCCreateConn.getConn());
			if(!(i>0)) {
				throw new Exception();
			} else {
				int cnt = dao.selectCount(JDBCCreateConn.getConn());
				request.setAttribute("cnt", cnt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

