package kr.co.goodee39.MVCService;

import javax.servlet.http.HttpServletRequest;

import kr.co.goodee39.DAO.ministoreDAO;
import kr.co.goodee39.connection.JDBCCreateConn;

public class ministoreService {
	public void setAmount(HttpServletRequest request) {
		try {
			ministoreDAO dao = new ministoreDAO();
			
			int num = Integer.parseInt(request.getParameter("num"));
			int menu = Integer.parseInt(request.getParameter("menu"));
			
			dao.insertStore(JDBCCreateConn.getConn(), num*menu);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void getAmount(HttpServletRequest request) {
		try {
			ministoreDAO dao = new ministoreDAO();
			
			request.setAttribute("amount", dao.selectStore(JDBCCreateConn.getConn()));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
