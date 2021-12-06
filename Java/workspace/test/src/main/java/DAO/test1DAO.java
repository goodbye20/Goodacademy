package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import VO.test1VO;


public class test1DAO {
	public List<test1VO> getEmpList(Connection conn) throws Exception {
		String query = "select * from mydb2.member";
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		ResultSet rs = pstmt.executeQuery();
		
		List<test1VO> list = new ArrayList<test1VO>();
		while(rs.next()) {
			test1VO vo = new test1VO(
					rs.getString("uname"),
					rs.getInt("age"), 
					rs.getString("comments"));
					
			
			list.add(vo);
		}
		pstmt.close();
		rs.close();
		
		return list;
	}
}
