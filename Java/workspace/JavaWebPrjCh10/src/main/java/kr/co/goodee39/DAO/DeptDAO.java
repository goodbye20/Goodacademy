package kr.co.goodee39.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.goodee39.VO.DeptVO;

public class DeptDAO {
	public int insertDept(Connection conn, DeptVO vo) throws Exception{
		String query = "insert into dept(deptno, dname, loc) values(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, vo.getDeptno());
		pstmt.setString(2, vo.getDname());
		pstmt.setString(3, vo.getLoc());
		
		int i = pstmt.executeUpdate();
		
		return i;
	}
}

