package kr.co.goodee39.date1130;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Ex01PreparedStatement {

		String connect = "jdbc:mariadb://localhost:3310/scott";
		String user = "root";
		String password = "7227";
		
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		
		public Ex01PreparedStatement() {
			try {
				// 1. 드라이버 등록
				Class.forName("org.mariadb.jdbc.Driver");
				// 2. connection 얻기
				conn = DriverManager.getConnection(connect, user, password);
				// 3. PreparedStatement 얻기
				String query = "select * from emp where deptno = ?";
				// 넣어줄 값 ?로 맵핑하여 아래의 setInt를 통해 값을 넣어줄수 있음
				pstmt = conn.prepareStatement(query);
				// 첫번째 인트는 10
				pstmt.setInt(1,10);
				// 4. query 실행 후 결과 집합 얻기
				rs = pstmt.executeQuery();
				// 5. 결과 집합 처리
				while(rs.next()) {
					int num = rs.getInt("empno");
					String name = rs.getString("ename");
					String job = rs.getString("job");
					System.out.println(num+"--"+name+"--"+job);
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pstmt.close();
					conn.close();					
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}
		
	public static void main(String[] args) {
		new Ex01PreparedStatement();
	}

}
