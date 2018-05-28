/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite.model;

import java.util.Date;
import java.util.List;
/**
 *
 * @author mspav
 */
public class Books {
    private int bookId; 
	private String iSBN; 
	private String bookName; 
        
	private String bImage_small; 
	private String bImage_large; 
	private float price; 
	private int genreId; 
	private String book_Format; 
	private Date publishDate; 
	private String bookDescr;
	private float rating;
	private List<Authors> authors;
	public Books() {
		
	}
	
	
	public int getBookId() {
		return bookId;
	}


	public void setBookId(int bookId) {
		this.bookId = bookId;
	}


	public String getiSBN() {
		return iSBN;
	}


	public void setiSBN(String iSBN) {
		this.iSBN = iSBN;
	}


	public String getBookName() {
		return bookName;
	}


	public void setBookName(String bookName) {
		this.bookName = bookName;
	}


	public String getbImage_small() {
		return bImage_small;
	}


	public void setbImage_small(String bImage_small) {
		this.bImage_small = bImage_small;
	}


	public String getbImage_large() {
		return bImage_large;
	}


	public void setbImage_large(String bImage_large) {
		this.bImage_large = bImage_large;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public int getGenreId() {
		return genreId;
	}


	public void setGenreId(int genreId) {
		this.genreId = genreId;
	}


	public String getBook_Format() {
		return book_Format;
	}


	public void setBook_Format(String book_Format) {
		this.book_Format = book_Format;
	}


	public Date getPublishDate() {
		return publishDate;
	}


	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}


	public String getBookDescr() {
		return bookDescr;
	}


	public void setBookDescr(String bookDescr) {
		this.bookDescr = bookDescr;
	}


	public float getRating() {
		return rating;
	}


	public void setRating(float rating) {
		this.rating = rating;
	}	
        public List<Authors> getAuthors()
        {
            return authors;
        }
        public void setAuthors(List<Authors> authors)
        {
            this.authors = authors;
        }
}
