package backend;

import java.sql.*;

public class ConnectionDB {
	public String userid ;
	public static String name;
	public Connection Connect() throws  SQLException, ClassNotFoundException
	{
		String URL,username,password; 
			Class.forName("com.mysql.cj.jdbc.Driver");
			URL="jdbc:mysql://localhost:3306/database";
			username="root";
			password="Chand@2003";
			return DriverManager.getConnection(URL,username,password);
	}
	
}
