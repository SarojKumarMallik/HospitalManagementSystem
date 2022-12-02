package com.db;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnect {
	private static Connection conn;
	public static Connection getConn()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_2","root","root");
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			//conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
		
	}

}
