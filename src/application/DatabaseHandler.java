package application;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseHandler
{
	private static String connectionString = "jdbc:mysql://localhost:3306/risdatabase?autoReconnect=true&useSSL=false";
	private static String connectionName = "root";
	//private static String connectionPassword = "password";
	private static String connectionPassword = "";
	// connection  method that connects us to the MySQL database
	public static Connection getConnection() throws SQLException
	{
		return DriverManager.getConnection(connectionString, connectionName, connectionPassword);
	}
	// method that displays our errors in more detail if connection fails
	public static void displayException(SQLException ex){
		System.err.println("Error Message: " + ex.getMessage());
		System.err.println("Error Code: " + ex.getErrorCode());
		System.err.println("SQL Status: " + ex.getSQLState());
	}
}
