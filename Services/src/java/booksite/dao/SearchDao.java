/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite.dao;

import booksite.model.Authors;
import booksite.model.Books;
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
public class SearchDao {
    private Connection connect = null;
    private Connection connectAuthor = null;
	private Statement statement = null;
        private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
        public String searchKey;

	public List<Books> getBooksList(String searchKey) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		List<Books> books = new ArrayList<>();
		try {

			// Statements allow to issue SQL queries to the database
			statement = connect.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement.executeQuery(
					"select * from books where bookName like '%"+searchKey+"%';");
			books = writeResultSet(resultSet);
                        
                        

		} catch (SQLException ex) {
			System.out.println("An error occurred. Maybe user/password is invalid");
			ex.printStackTrace();
		}

		finally {
			close();
		}
		return books;
	}
        

        
        
        private List<Books> writeResultSet(ResultSet resultSet) throws SQLException {
		List<Books> books = new ArrayList<>();
		while (resultSet.next()) {
                        int bookId = resultSet.getInt("BookId");
                     
			String bookName = resultSet.getString("BookName");
			String bImage_small = resultSet.getString("BImage_small");
                      
                        Books book = new Books();
			book.setBookId(bookId);
                     
                        book.setBookName(bookName);
                      book.setbImage_small(bImage_small);
                     
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
