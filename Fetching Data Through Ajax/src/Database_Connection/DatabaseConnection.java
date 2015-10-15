package Database_Connection;
import java.sql.*;

public class DatabaseConnection 
{
	static Connection conn;
	public static Connection DBConnection()throws SQLException 
	{
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Drivers Loaded....!");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Ashutosh","Kedar");
			System.out.println("Connected....!");
			return conn;
		} catch (Exception e) 
		{
			return null;
		}
	}
}
