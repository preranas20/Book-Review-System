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
public class Reviews {
        private int reviewId;
	private int bookId;
	private String bookName;
	private int userId;
	private String fisrtName;
        private String lastName;
        private String profilePic;
        private int upvotes;
	private int downvotes;
	private String reviewDesc;
	
	
	public Reviews() {
		
	}
	
	public Reviews(int bookId, String bookName,int userId, String firstName,String lastName,int upvotes,int downvotes,String reviewDesc) {
		this.bookId = bookId;
		this.bookName = bookName;
		this.setUserId(userId);
                this.setFisrtName(firstName);
                this.setLastName(lastName);
                this.setUpvotes(upvotes);
                this.setDownvotes(downvotes);
		this.setReviewDesc(reviewDesc);                
	}
        public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
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
        
        public String getProfilePic() {
		return profilePic;
	}

	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
        
	public int getUpvotes() {
		return upvotes;
	}

	public void setUpvotes(int upvotes) {
		this.upvotes = upvotes;
	}

	public int getDownvotes() {
		return downvotes;
	}

	public void setDownvotes(int downvotes) {
		this.downvotes = downvotes;
	}

	public String getReviewDesc() {
		return reviewDesc;
	}

	public void setReviewDesc(String reviewDesc) {
		this.reviewDesc = reviewDesc;
	}
}
