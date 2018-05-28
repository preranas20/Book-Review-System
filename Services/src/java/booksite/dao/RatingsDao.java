/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite.dao;

import booksite.model.Ratings;
import booksite.model.StatusMessage;
import booksite.model.UsersActivity;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author mspav
 */


public class RatingsDao {

	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;

	public List<Ratings> getRatings() {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		List<Ratings> ratings = new ArrayList<>();
		try {

			// Statements allow to issue SQL queries to the database
			statement = connect.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement.executeQuery(
					"select rat.UserId, rat.BookId, b.BookName, round(avg(rat.Ratings),1) as Rating from ratings rat join books b on rat.BookId = b.BookID\r\n"
							+ "group by rat.BookId order by rat.BookId");
			ratings = writeResultSetRatings(resultSet);

		} catch (SQLException ex) {
			System.out.println("An error occurred. Maybe user/password is invalid");
			ex.printStackTrace();
		}

		finally {
			close();
		}
		System.out.println("size2 " + ratings.size());
		return ratings;
	}

	public List<Ratings> getRatingsbyBookId(int bookId) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		List<Ratings> ratings = new ArrayList<>();
		try {

			// Statements allow to issue SQL queries to the database
			statement = connect.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement.executeQuery(
					"select rat.BookId, b.BookName, round(avg(rat.Ratings),1) as Rating from ratings rat join books b on rat.BookId = b.BookID\r\n"
							+ "where rat.BookId =" + bookId + " group by rat.BookId");
			ratings = writeResultSetRatings(resultSet);

		} catch (SQLException ex) {
			System.out.println("An error occurred. Maybe user/password is invalid");
			ex.printStackTrace();
		}

		finally {
			close();
		}
		System.out.println("size2 " + ratings.size());
		return ratings;
	}
         
        public StatusMessage saveRating(Ratings rev) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		String message="";
                StatusMessage status = new StatusMessage();
		try {
                    statement = connect.createStatement();
			String insertStat = "INSERT INTO ratings (UserId, BookId, Ratings) \n" +
                                            "VALUES (?,?,?)";
                        PreparedStatement preparedStmt = connect.prepareStatement(insertStat);
                        preparedStmt.setInt (1, rev.getUserId());
                        preparedStmt.setInt (2, rev.getBookId());
                        preparedStmt.setFloat(3, rev.getRating());					
			preparedStmt.execute();
                        
                        message = "success";
                        status.setStatus(message);

		} catch (SQLException ex) {
			System.out.println("An error occurred. Maybe user/password is invalid");
			ex.printStackTrace();
                        message= "failed";
                        status.setStatus(message);
		}

		finally {
			close();                        
		}
		return status;
	}

	private List<Ratings> writeResultSetRatings(ResultSet resultSet) throws SQLException {
		List<Ratings> ratings = new ArrayList<>();
		while (resultSet.next()) {
                        int bookId = resultSet.getInt("BookId");
			String bookName = resultSet.getString("BookName");
			float rating = resultSet.getInt("Rating");

			Ratings r = new Ratings();
                        r.setBookId(bookId);
			r.setBookName(bookName);
			r.setRating(rating);
			ratings.add(r);
		}
		return ratings;
	}
        
	private void close() {
		try {
			if (resultSet != null) {
				resultSet.close();
			}

			if (statement != null) {
				statement.close();
			}

			if (connect != null) {
				connect.close();
			}
		} catch (Exception e) {

		}
	}

}
