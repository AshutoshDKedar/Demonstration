package Connectivity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseConnection {

	public static void main(String[] args) {
		try {
			Class.forName("org.postgresql.Driver");
			System.out.println("Drivers Loaded..!");
			Connection conn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/hybridsoft","hybridsoft","hybridsoft");
			
			System.out.println("Connected...!");
			String Select="select * from emp";
			Statement stmt=conn.createStatement();
			ResultSet rs= stmt.executeQuery(Select);
			while(rs.next())
			{
				System.out.println(rs.getInt(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}