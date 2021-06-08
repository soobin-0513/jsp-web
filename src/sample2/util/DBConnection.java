package sample2.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static String url;
	private static String user;
	private static String password;
	
	static {
		url="jdbc:mysql://52.79.195.216/test2";;
		user="root";
		password="wnddkdwjdqhcjfl1";
	}
	
	//static 만든이유 객체를생선하지 않아도 사용할수 있어서 
	public static Connection getConnection() {
		try {
			Connection con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
	
	// ... -여러개 객체을 닫을수 있다는 표현 
	public static void close(AutoCloseable...objs) {
		for(AutoCloseable o : objs) {
			if( o != null) {
				try {
					o.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
				
			}
		}
	}
	
	public static void rollback(Connection con) {
		if (con != null) {
			try {
				con.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
