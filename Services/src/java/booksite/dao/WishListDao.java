/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite.dao;

import booksite.model.WishList;
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
public class WishListDao {
    private Connection connect = null;
    private Statement statement = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public List<WishList> getUserWishList(int userId) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();
		List<WishList> books = new ArrayList<>();
		try {
                        statement= connect.createStatement();
                        resultSet = statement.executeQuery("select w.UserId, w.BookId, b.BookName,b.BImage_small from wishlist w join books b on w.BookId = b.BookId\n"+
                                "where w.UserId=" +userId+" order by w.BookId;");                        
			books = writeResultSet(resultSet);           

		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		finally {
			close();
		}
		return books;
	}
    
    public String addWishList(WishList wList) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		String message="";
		try {
                    statement = connect.createStatement();
			String insertStat = "INSERT INTO wishlist (BookId, UserId) \n" +
                                            "VALUES (?,?)";
                        PreparedStatement preparedStmt = connect.prepareStatement(insertStat);
                        preparedStmt.setInt (1, wList.getBookId());
                        preparedStmt.setInt (2, wList.getUserId());
                        preparedStmt.execute();
                        message = "success";
		} catch (SQLException ex) {
			ex.printStackTrace();
                        message= "failed";
		}
		finally {
			close();                        
		}
		return message;
	}
    
    private List<WishList> writeResultSet(ResultSet resultSet) throws SQLException {
		List<WishList> books = new ArrayList<>();                
		while (resultSet.next()) {
                        int userId = resultSet.getInt("UserId");
			int bookId = resultSet.getInt("BookId");
			String bookName = resultSet.getString("BookName");
                        String BImage_small = resultSet.getString("BImage_small");
			WishList book = new WishList();
                        book.setUserId(userId);
                        book.setBookId(bookId);
                        book.setBookName(bookName);
                        book.setBImage_small(BImage_small);
			books.add(book);
		}
		return books;
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
