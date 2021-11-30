package kr.co.goodee39.MVCService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.co.goodee39.DAO.EmpDAO;
import kr.co.goodee39.VO.EmpVO;
import kr.co.goodee39.connection.JDBCCreateConn;

public class MVCService2 {
	public void getEmpList(HttpServletRequest request) {
		try {
		EmpDAO dao = new EmpDAO();
		List<EmpVO> list = dao.getEmpList(JDBCCreateConn.getConn());
		// 커넥션을 불러와서
		// 커넥션을 통해 리스트에 넣어줌
		
		request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
