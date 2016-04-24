package at.sut.ausgaben.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import at.sut.ausgaben.vo.Entertainment;
import at.sut.ausgaben.vo.Love;

public class LoveDao {
	private static final String ipAddress = "192.168.157.139";
	private static final String databaseName = "ausgaben";
	private static final String userName = "test";
	private static final String password = "test";
	
	// holt alle love eintr�ge
	public List<Love> getAllLove() throws Exception {
		List<Love> loveList = new ArrayList<Love>();
		Connection connection = getConnection();
		Statement stmt = connection.createStatement();
		ResultSet resultSet = stmt.executeQuery("select * from love;");
		resultSet.first();
		while (!(resultSet.isAfterLast())) {
			Love l = new Love(resultSet.getInt(1),
					resultSet.getInt(2), resultSet.getString(3),
					resultSet.getTimestamp(4));
			loveList.add(l);
			resultSet.next();
		}
		stmt.close();
		connection.close();
		return loveList;
	}
	
	public void insertLove(Love l) throws Exception {
		Connection connection = getConnection();
		Statement stmt = connection.createStatement();
		java.util.Date date = new java.util.Date();
		stmt.executeUpdate("insert into love (amount,notes,date) VALUES ('"
				+ l.getAmount()
				+ "','"
				+ l.getNotes()
				+ "','"
				+ (new Timestamp(date.getTime())) + "');");
		stmt.close();
		connection.close();
	}
	
	private Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://" + ipAddress + "/"
				+ databaseName + "?user=" + userName + "&password=" + password
				+ "");
	}
}
