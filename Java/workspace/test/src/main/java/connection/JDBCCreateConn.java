package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCCreateConn {
	private static Connection conn;
	
	static {
		try {
		String connect = "jdbc:mariadb://localhost:3310/scott";
		String user = "root";
		String password = "7227";
		
		Class.forName("org.mariadb.jdbc.Driver");
		if(conn==null) {
			conn = DriverManager.getConnection(connect, user, password);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}	
}
	
	public static Connection getConn() {
		return conn;
	}
}
	
	
