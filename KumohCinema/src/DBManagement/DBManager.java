package DBManagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager {
	String url="jdbc:mysql://localhost:3306/cinema?serverTimezone=Asia/Seoul";
	Connection conn=null;
	Statement stmt=null;
	
	private void openDB() throws SQLException{
		conn = DriverManager.getConnection(url,"root","m0m7m3m0");
		stmt=conn.createStatement();
		System.out.println("접속 성공");
	}
	public void closeDB() throws SQLException{
		conn.close();
	}
	public boolean doWithoutResult(String query) 
	{
		int result=0;
		try {
			openDB();
			result = stmt.executeUpdate(query);
			closeDB();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result>0)return true;
		else return false;
	}
	public ResultSet doWithResult(String query)
	{
		ResultSet rs=null;
		try {
			openDB();
			rs=stmt.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
}
