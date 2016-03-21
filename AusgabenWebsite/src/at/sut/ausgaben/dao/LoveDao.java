package at.sut.ausgaben.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class LoveDao {
	private static final String ipAddress = "192.168.157.135";
	private static final String databaseName = "ausgaben";
	private static final String userName = "test";
	private static final String password = "test";
	
	private Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://" + ipAddress + "/"
				+ databaseName + "?user=" + userName + "&password=" + password
				+ "");
	}
}
