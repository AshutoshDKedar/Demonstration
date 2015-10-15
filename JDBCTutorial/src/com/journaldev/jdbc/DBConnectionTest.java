package com.journaldev.jdbc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnectionTest {
	
	private static final String QUERY = "select * from emp";

	public static void main(String[] args) {
				
		//using try-with-resources to avoid closing resources (boiler plate code)
		try(Connection con = DBConnection.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(QUERY)) {	
			
			while(rs.next()){
				int id = rs.getInt("eno");
				String name = rs.getString("ename");
				System.out.println(id +"\n"+name);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
