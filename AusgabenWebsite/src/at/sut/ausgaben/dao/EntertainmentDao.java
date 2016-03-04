package at.sut.ausgaben.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class EntertainmentDao {
	private static final String ipAddress = "192.168.157.131";
	private static final String databaseName = "ausgaben";
	private static final String userName = "ausgabenTobi";
	private static final String password = "tobias";

	public void insertAmount(int amount) throws Exception{
		Connection connection = getConnection();
		Statement stmt = connection.createStatement();
	}
	
	public void insertNotes(String note) throws Exception{
		Connection connection = getConnection();
		Statement stmt = connection.createStatement();
	}
	
	private Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://" + ipAddress + "/"
				+ databaseName + "?user=" + userName + "&password=" + password
				+ "");
	}

}
