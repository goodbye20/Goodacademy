package kr.co.goodee39.date1130;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Ex03pstmtUpdate {
	String connect = "jdbc:mariadb://localhost:3310/scott";
	String user = "root";
	String password = "7227";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public Ex03pstmtUpdate() {
	try {
		/// 1. 드라이버 등록
		Class.forName("org.mariadb.jdbc.Driver");
		// 2. connection 얻기
		conn = DriverManager.getConnection(connect, user, password);
		// 3. PreparedStatment 얻기
		String query = "update dept set loc=? where deptno=?";
		
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, "CCCC");
		pstmt.setInt(2, 50);
		// 4. 쿼리 실행
		int i = pstmt.executeUpdate();
		System.out.println("처리결과 : "+ i);
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			pstmt.close();
			conn.close();					
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
}
	public static void main(String[] args) {
		new Ex03pstmtUpdate();
	}
}
