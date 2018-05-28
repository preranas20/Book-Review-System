/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite.model;

import java.util.List;

/**
 *
 * @author mspav
 */
public class WishList {
    
    private int userId;
    private int bookId;
    private String bookName;
    private String BImage_small;
        public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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
        public String getBImage_small() {
		return BImage_small;
	}
        
	public void setBImage_small(String BImage_small) {
		this.BImage_small = BImage_small;
	}
}
