package at.sut.ausgaben.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import at.sut.ausgaben.vo.Entertainment;

public class EntertainmentDao {
	private static final String ipAddress = "192.168.157.131";
	private static final String databaseName = "ausgaben";
	private static final String userName = "ausgabenTobi";
	private static final String password = "tobias";

	// erstellt ein neues Entertainment
	public void insertEntertainment(Entertainment e) throws Exception {
		Connection connection = getConnection();
		Statement stmt = connection.createStatement();
		stmt.executeUpdate("insert into Entertainment (amount,notes,date) VALUES ('"
				+ e.getAmount()
				+ "','"
				+ e.getNotes()
				+ "','"
				+ e.getDate()
				+ "');");
		stmt.close();
		connection.close();
	}


	//holt alle entertainment einträge
	public List<Entertainment> getAllEntertainment() throws Exception {
		List<Entertainment> entertainmentList = new ArrayList<Entertainment>();
		Connection connection = getConnection();
		Statement stmt = connection.createStatement();
		ResultSet resultSet = stmt.executeQuery("select * from Entertainment;");
		resultSet.first();
		while (!(resultSet.isAfterLast())) {
			Entertainment e = new Entertainment(resultSet.getInt(1),
					resultSet.getInt(2), resultSet.getString(3),
					resultSet.getDate(4));
			entertainmentList.add(e);
			resultSet.next();
		}
		stmt.close();
		connection.close();
		return entertainmentList;
	}

	private Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://" + ipAddress + "/"
				+ databaseName + "?user=" + userName + "&password=" + password
				+ "");
	}

}
