package kr.co.goodee39.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ministoreDAO {
	public int insertStore(Connection conn, int amount) throws Exception{
		// DB에 cnt를 업데이트해주는 부분
		String query = "update ministore set stock = stock+?";		
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, amount);
		
		int i = pstmt.executeUpdate();
		
		return i;
	}
	
	public int selectStore(Connection conn) throws Exception{
		String query = "select stock from ministore";		
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		ResultSet rs = pstmt.executeQuery();
		int stock = 0;
		
		while(rs.next()) {
			stock = rs.getInt("stock");
		}
		return stock;
	}
}