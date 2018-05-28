/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite.dao;

import booksite.model.Ratings;
import booksite.model.Reviews;
import booksite.model.UsersActivity;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author mspav
 */
public class UserActivityDao {
    
    private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
        private ResultSet resultSetUser = null;
	private ResultSet resultSetRate = null;
        private ResultSet resultSetReview = null;

    public UsersActivity getUsersActivity(int userId) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();
                UsersActivity userAct = new UsersActivity();
		List<Ratings> ratings = new ArrayList<>();
                List<Reviews> reviews = new ArrayList<>();
		try {
                        statement= connect.createStatement();
                        resultSetUser= statement.executeQuery("select * from users where UserId="+userId);
                        userAct = writeResultSetUsers(resultSetUser);
			statement = connect.createStatement();
			resultSetRate = statement.executeQuery("select rat.UserId, u.FirstName, u.LastName, rat.BookId, b.BookName, round(rat.Ratings,1) as Rating from ratings rat join books b on rat.BookId = b.BookID\n" +
                                        "join users u on rat.UserId = u.UserId where rat.UserId ="+userId +" order by Rating desc;");
			ratings = writeResultSetRatings(resultSetRate);
                        userAct.setRateAct(ratings);
                        resultSetReview = statement.executeQuery("select rev.ReviewId, rev.BookId, b.BookName, rev.UserId, u.FirstName,u.LastName, \n" +
                                            "rev.ReviewDescr, sum(rv.Upvotes) as Upvotes, sum(rv.Downvotes) as Downvotes\n" +
                                            "from reviews rev join books b on rev.BookId = b.BookId join users u on rev.UserId = u.UserId \n" +
                                            "left join reviewVotes rv on rev.ReviewId = rv.ReviewId \n" +
                                            "where rev.UserId ="+userId+" group by rev.ReviewId order  by rev.BookId;");
			reviews = writeResultSetReviews(resultSetReview);
                        userAct.setReviewAct(reviews);
                        

		} catch (SQLException ex) {
			System.out.println("An error occurred. Maybe user/password is invalid");
			ex.printStackTrace();
		}

		finally {
			close();
		}
		return userAct;
	}
    
    private UsersActivity writeResultSetUsers(ResultSet resultSet) throws SQLException {
		UsersActivity u = new UsersActivity();
                
		while (resultSet.next()) {
                    int userId  = resultSet.getInt("UserId");
		     String userFName = resultSet.getString("FirstName");
		     String userLName = resultSet.getString("LastName");
                     String profilePic = resultSet.getString("ProfilePic");
		     String gender = resultSet.getString("Gender");
		     String phone = resultSet.getString("Phone");
		     String organization = resultSet.getString("Organisation");
		     String occupation = resultSet.getString("Occupation");
		     Date dob = resultSet.getDate("DOB");
		     String blogUrl = resultSet.getString("BlogURL");
		     String description = resultSet.getString("Description");
		     String email = resultSet.getString("Email");
		     String city = resultSet.getString("City");
		     String country = resultSet.getString("Country");

			u.setUserId(userId);
			u.setUserFName(userFName);
			u.setUserLName(userLName);
                        u.setProfilePic(profilePic);
			u.setGender(gender);
			u.setPhone(phone);
			u.setOrganization(organization);
			u.setOccupation(occupation);
			u.setDob(dob);
			u.setBlogUrl(blogUrl);
			u.setDescription(description);
			u.setEmail(email);
			u.setCity(city);
                        u.setCountry(country);
                }
		return u;
	}
    private List<Ratings> writeResultSetRatings(ResultSet resultSet) throws SQLException {
		List<Ratings> ratings = new ArrayList<>();
		while (resultSet.next()) {
                        int userId = resultSet.getInt("UserId");
                        String firstName = resultSet.getString("FirstName");
                        String lastName = resultSet.getString("LastName");
			int bookId = resultSet.getInt("BookId");
			String bookName = resultSet.getString("BookName");
			float rating = resultSet.getInt("Rating");

			Ratings r = new Ratings();
                        r.setUserId(userId);
                        r.setFisrtName(firstName);
                        r.setLastName(lastName);
			r.setBookId(bookId);
			r.setBookName(bookName);
			r.setRating(rating);
			ratings.add(r);
		}
		return ratings;
	}
    
    private List<Reviews> writeResultSetReviews(ResultSet resultSet) throws SQLException {
		List<Reviews> reviews = new ArrayList<>();
                
		while (resultSet.next()) {
                        int reviewId = resultSet.getInt("ReviewId");
			int bookId = resultSet.getInt("BookId");
			String bookName = resultSet.getString("BookName");
			int userId = resultSet.getInt("UserId");
			String firstName = resultSet.getString("FirstName");
                        String lastName = resultSet.getString("LastName");
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
			r.setUpvotes(upvotes);
                        r.setDownvotes(downvotes);
                        r.setReviewDesc(desciption);
			reviews.add(r);
		}
		return reviews;
	}
    
    private void close() {
		try {
			if (resultSetRate != null) {
				resultSetRate.close();
			}
                        if (resultSetReview != null) {
				resultSetReview.close();
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
