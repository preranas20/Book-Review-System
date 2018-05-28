/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite.model;

/**
 *
 * @author mspav
 */
public class Ratings {
        private int userId;
        private String fisrtName;
        private String lastName;
	private int bookId;
	private String bookName;
	private float rating;
	
	
	public Ratings() {
		
	}
	
	public Ratings(int userId, int bookId, String bookName, float rating) {
                this.setUserId(userId);
		this.setBookId(bookId);
		this.setBookName(bookName);
		this.setRating(rating);
	}

        public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
        public String getFisrtName() {
		return fisrtName;
	}

	public void setFisrtName(String fisrtName) {
		this.fisrtName = fisrtName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
        
	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}
}
