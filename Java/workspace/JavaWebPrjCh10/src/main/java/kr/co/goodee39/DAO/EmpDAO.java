package kr.co.goodee39.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.goodee39.VO.EmpVO;

public class EmpDAO {
	public List<EmpVO> getEmpList(Connection conn) throws Exception {
		String query = "select * from emp";
		// 쿼리를 날려주고
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		ResultSet rs = pstmt.executeQuery();
		
		List<EmpVO> list = new ArrayList<EmpVO>();
		while(rs.next()) {
			// 커리를 받아줌
			System.out.println(rs.getInt("EMPNO"));
			EmpVO vo = new EmpVO(
					rs.getInt("EMPNO"), 
					rs.getString("ENAME"),
					rs.getString("JOB"),
					0,
					rs.getString("HIREDATE"),
					rs.getDouble("SAL"),
					0.0,
					rs.getInt("DEPTNO"));
					// 값들을 쭉 받아줌
			
			list.add(vo);
			// 받아준 값을 vo에 넣고
		}
		pstmt.close();
		rs.close();
		
		return list;
	}
}
