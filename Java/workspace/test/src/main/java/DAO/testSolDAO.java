package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import VO.testSolVO;

public class testSolDAO {
	public testSolVO selectMember(Connection conn) throws Exception {
		String query = "select uid, uname, age, comments from member";
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		ResultSet rs = pstmt.executeQuery();
		
		testSolVO vo = new testSolVO();
		
		while(rs.next()) {
			vo.setUid(rs.getInt("uid"));
			vo.setUname(rs.getString("uname"));
			vo.setAge(rs.getInt("age"));
			vo.setComments(rs.getString("comments"));
		}
		
		return vo;
	}
}
