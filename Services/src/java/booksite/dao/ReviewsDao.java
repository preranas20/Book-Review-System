/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import booksite.model.Reviews;
import booksite.model.StatusMessage;
import java.sql.CallableStatement;
/**
 *
 * @author mspav
 */


public class ReviewsDao {

	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;

	public List<Reviews> getReviews() {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		List<Reviews> reviews = new ArrayList<>();
		try {

			// Statements allow to issue SQL queries to the database
			statement = connect.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement.executeQuery(
					"select rev.BookId, b.BookName, rev.UserId, u.FirstName, rev.ReviewDescr,rev.Upvotes, rev.Downvotes from reviews rev join books b on rev.BookId = b.BookId \r\n" + 
					"join users u on rev.UserId = u.UserId order by rev.BookId,rev.UserId;");
			reviews = writeResultSetReviews(resultSet);

		} catch (SQLException ex) {
			System.out.println("An error occurred. Maybe user/password is invalid");
			ex.printStackTrace();
		}

		finally {
			close();
		}
		return reviews;
	}

        //get reviews by bookId Id
	public List<Reviews> getReviewsbyBookId(int bookId) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		List<Reviews> reviews = new ArrayList<>();
		try {

			// Statements allow to issue SQL queries to the database
			statement = connect.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement.executeQuery("select rev.ReviewId, rev.BookId, b.BookName, rev.UserId, u.FirstName,u.LastName,u.ProfilePic, \n" +
                                "rev.ReviewDescr, sum(rv.Upvotes) as Upvotes, sum(rv.Downvotes) as Downvotes\n" +
                                "from reviews rev join books b on rev.BookId = b.BookId join users u on rev.UserId = u.UserId \n" +
                                "left join reviewVotes rv on rev.ReviewId = rv.ReviewId "+
                                "where rev.BookId ="+bookId+" group by rev.ReviewId");
                        reviews = writeResultSetReviews(resultSet);

		} catch (SQLException ex) {
			System.out.println("An error occurred. Maybe user/password is invalid");
			ex.printStackTrace();
		}

		finally {
			close();
		}
		return reviews;
	}
        
        public StatusMessage saveReview(Reviews rev) {
        //public String saveReview(Reviews rev) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		String message="";
                StatusMessage status = new StatusMessage();                        
		try {
                    statement = connect.createStatement();
			String insertStat = "INSERT INTO reviews (userId, BookId, ReviewDescr) \n" +
                                            "VALUES (?,?,?)";
                        PreparedStatement preparedStmt = connect.prepareStatement(insertStat);
                        preparedStmt.setInt (1, rev.getUserId());
                        preparedStmt.setInt (2, rev.getBookId());
                        preparedStmt.setString(3, rev.getReviewDesc());					
			preparedStmt.execute();
                        
                        message = "success";
                        status.setStatus(message);
                        

		} catch (SQLException ex) {
			ex.printStackTrace();
                        message= "failed";
                        status.setStatus(message);
		}

		finally {
			close();                        
		}
		return status;
                //return message;
	}
        
        public Reviews updateReviewUpvotes(Reviews rev) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();
                CallableStatement cstmt = null;
                Reviews review = new Reviews();
		try {
                    cstmt = connect.prepareCall("{call reviewUpvotes(?, ?)}");
                    cstmt.setInt(1, rev.getReviewId());
                    cstmt.setInt(2, rev.getUserId());
                    ResultSet resultSet = cstmt.executeQuery();
                    review = writeResultSetVotes(resultSet);
                    
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return review;
	}
        public Reviews updateReviewDownvotes(Reviews rev) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();
                CallableStatement cstmt = null;
                Reviews review = new Reviews();
		try {
                    cstmt = connect.prepareCall("{call reviewDownvotes(?, ?)}");
                    cstmt.setInt(1, rev.getReviewId());
                    cstmt.setInt(2, rev.getUserId());
                    ResultSet resultSet = cstmt.executeQuery();
                    review = writeResultSetVotes(resultSet);
                    
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return review;
	}
        
	private List<Reviews> writeResultSetReviews(ResultSet resultSet) throws SQLException {
		List<Reviews> reviews = new ArrayList<>();

		// ResultSet is initially before the first data set
		while (resultSet.next()) {
                        int reviewId = resultSet.getInt("ReviewId");
			int bookId = resultSet.getInt("BookId");
			String bookName = resultSet.getString("BookName");
			int userId = resultSet.getInt("UserId");
			String firstName = resultSet.getString("FirstName");
                        String lastName = resultSet.getString("LastName");
                        String profilePic = resultSet.getString("ProfilePic");
			String desciption = resultSet.getString("ReviewDescr");
			int upvotes = resultSet.getInt("Upvotes");
			int downvotes = resultSet.getInt("Downvotes");

			Reviews r = new Reviews();
                        r.setReviewId(reviewId);
			r.setBookId(bookId);
			r.setBookName(bookName);
			r.setUserId(userId);
			r.setFisrtName(firstName);
                        r.setLastName(lastName);
                        r.setProfilePic(profilePic);
			r.setUpvotes(upvotes);
                        r.setDownvotes(downvotes);
                        r.setReviewDesc(desciption);
			reviews.add(r);
		}
		return reviews;
	}
        
        private Reviews writeResultSetVotes(ResultSet resultSet) throws SQLException {
		Reviews r = new Reviews();
		while (resultSet.next()) {
                        int reviewId = resultSet.getInt("ReviewId");			
			int upvotes = resultSet.getInt("Upvotes");
			int downvotes = resultSet.getInt("Downvotes");

			r.setReviewId(reviewId);
			r.setUpvotes(upvotes);
                        r.setDownvotes(downvotes);
		}
		return r;
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

