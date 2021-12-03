package kr.co.goodee39.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GuestDAO {
	// DAO(DATABASE Access Object) 데이터베이스와 직접 접근해 데이터를 처리해주는 곳
	
	public int insertCount(Connection conn) throws Exception{
		// DB에 cnt를 업데이트해주는 부분
		String query = "update guest set cnt = cnt+1";		
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		return pstmt.executeUpdate();
	}
	
	public int selectCount(Connection conn) throws Exception {
		// DB에서 cnt를 불러와주는 부분
		String query = "select cnt from guest";
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		ResultSet rs = pstmt.executeQuery();
		
		int result = 0;
		
		while(rs.next()) {
			result = rs.getInt("cnt");
		}
		
		return result;
	}
	
	
}
