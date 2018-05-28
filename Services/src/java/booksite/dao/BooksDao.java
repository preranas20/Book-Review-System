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
public class BooksDao {
    private Connection connect = null;
    private Connection connectAuthor = null;
	private Statement statement = null;
        private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
        

	public List<Books> getTopBooksGenre(int genreId) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		List<Books> books = new ArrayList<>();
		try {

			// Statements allow to issue SQL queries to the database
			statement = connect.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement.executeQuery(
					"select b.*, round(avg(rat.Ratings),1) as Ratings from books b left join ratings rat on b.BookID = rat.BookId\n" +
                                        "where b.GenreId ="+ genreId+" group by b.BookId order by Ratings desc limit 10;");
			books = writeResultSet(resultSet);
                        
                        for (Books b : books)
                        {
                            List<Authors> authors = getBookAuthors(b.getBookId());
                            b.setAuthors(authors);
                        }

		} catch (SQLException ex) {
			System.out.println("An error occurred. Maybe user/password is invalid");
			ex.printStackTrace();
		}

		finally {
			close();
		}
		return books;
	}
        
        public Books getBookDetails(int bookId) {
		JDBCConnection jdbcConnection = new JDBCConnection();
		connect = jdbcConnection.getConnnection();

		Books book = new Books();
		try {
                        statement = connect.createStatement();
			resultSet = statement.executeQuery(
					"select b.*, round(avg(rat.Ratings),1) as Ratings from books b left join ratings rat on b.BookID = rat.BookId\n" +
                                        "where b.BookId ="+ bookId+" group by b.BookId;");
			book = writeResultSetBook(resultSet);                      
                        
                            List<Authors> authors = getBookAuthors(book.getBookId());
                            book.setAuthors(authors);
                     

		} catch (SQLException ex) {
			System.out.println("An error occurred. Maybe user/password is invalid");
			ex.printStackTrace();
		}

		finally {
			close();
		}
		return book;
	}
        
        
        private List<Books> writeResultSet(ResultSet resultSet) throws SQLException {
		List<Books> books = new ArrayList<>();
		while (resultSet.next()) {
                        int bookId = resultSet.getInt("BookId");
                        String iSBN = resultSet.getString("ISBN");
			String bookName = resultSet.getString("BookName");
			String bImage_small = resultSet.getString("BImage_small");
                        String bImage_large = resultSet.getString("BImage_large");
			float Price = resultSet.getFloat("Price");
                        int genreId = resultSet.getInt("GenreId");
			String book_Format = resultSet.getString("Book_Format");
			Date publishDate = resultSet.getDate("PublishDate");
                        String bookDescr = resultSet.getString("BookDescr");
                        float rating = resultSet.getFloat("Ratings");  
                        
                        Books book = new Books();
			book.setBookId(bookId);
                        book.setiSBN(iSBN);
                        book.setBookName(bookName);
                        book.setbImage_small(bImage_small);
                        book.setbImage_large(bImage_large);
                        book.setPrice(Price);
                        book.setGenreId(genreId);
                        book.setBook_Format(book_Format);
                        book.setPublishDate(publishDate);
                        book.setBookDescr(bookDescr);
                        book.setRating(rating);
                        books.add(book);
                 }
		return books;
	}
        
         private Books writeResultSetBook(ResultSet resultSet) throws SQLException {
		
             Books book = new Books();
             while (resultSet.next()) {
                        int bookId = resultSet.getInt("BookId");
                        String iSBN = resultSet.getString("ISBN");
			String bookName = resultSet.getString("BookName");
			String bImage_small = resultSet.getString("BImage_small");
                        String bImage_large = resultSet.getString("BImage_large");
			float Price = resultSet.getFloat("Price");
                        int genreId = resultSet.getInt("GenreId");
			String book_Format = resultSet.getString("Book_Format");
			Date publishDate = resultSet.getDate("PublishDate");
                        String bookDescr = resultSet.getString("BookDescr");
                        float rating = resultSet.getFloat("Ratings");                       
                        
			book.setBookId(bookId);
                        book.setiSBN(iSBN);
                        book.setBookName(bookName);
                        book.setbImage_small(bImage_small);
                        book.setbImage_large(bImage_large);
                        book.setPrice(Price);
                        book.setGenreId(genreId);
                        book.setBook_Format(book_Format);
                        book.setPublishDate(publishDate);
                        book.setBookDescr(bookDescr);
                        book.setRating(rating);
                 }
                return book;
         }
        
         
        public List<Authors> getBookAuthors(int bookId) {
		JDBCConnection jdbcConnection = new JDBCConnection();
                Statement statementAuthor = null;
                ResultSet resultSetAuthor = null;
		connectAuthor = jdbcConnection.getConnnection();

		List<Authors> authors = new ArrayList<>();
		try {

			// Statements allow to issue SQL queries to the database
			statementAuthor = connectAuthor.createStatement();
			// Result set get the result of the SQL query
			resultSetAuthor = statement.executeQuery(
					"select ba.AuthorId, a.AuthorName,AuthorDescr from Bookauthors ba join authors a \n" +
                                        "on ba.AuthorId = a.AuthorId join books b on ba.BookId = b.BookId where b.BookId ="+bookId);
			
                        while (resultSetAuthor.next()) {
                        int authorId = resultSetAuthor.getInt("AuthorId");
                        String authorName = resultSetAuthor.getString("AuthorName");
			String authorDescr = resultSetAuthor.getString("AuthorDescr");
                        Authors author = new Authors();
                        author.setAuthorId(authorId);
                        author.setAuthorName(authorName);
                        author.setAuthorDescr(authorDescr);
                        authors.add(author);			
                        }

		} catch (SQLException ex) {
			ex.printStackTrace();
		}	
                
		return authors;
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
