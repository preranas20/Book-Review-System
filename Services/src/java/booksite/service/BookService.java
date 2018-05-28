/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite.service;

import booksite.dao.BooksDao;
import booksite.dao.RatingsDao;
import booksite.dao.ReviewsDao;
import booksite.dao.SearchDao;
import booksite.dao.UserActivityDao;
import booksite.dao.WishListDao;
import booksite.model.Books;
import booksite.model.Ratings;
import booksite.model.Reviews;
import booksite.model.StatusMessage;
import booksite.model.UsersActivity;
import booksite.model.WishList;
import java.util.List;
import javax.ejb.Stateless;
import javax.ws.rs.Consumes;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author mspav
 */

@Stateless
@Path("/booksnew")
public class BookService {
    
        BooksDao booksService = new BooksDao();
	ReviewsDao reviewService = new ReviewsDao();
	RatingsDao ratingservice = new RatingsDao();
	UserActivityDao userService = new UserActivityDao();
        WishListDao wishlistService = new WishListDao();
        SearchDao searchService=new SearchDao();
        //get top 10 books in a genre
        @Path("/getTopBooksGenre/{genreId}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Books> getTopBooksGenre(@PathParam("genreId") int genreId) {
		return booksService.getTopBooksGenre(genreId);
	}
        
        //get details of a book
        @Path("/getBookDetails/{bookId}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Books getBookDetails(@PathParam("bookId") int bookId) {
		return booksService.getBookDetails(bookId);
	}
        //get search book results
        @Path("/getSearchDetails/{searchKey}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Books> getBooksList(@PathParam("searchKey") String searchKey) {
		
            return searchService.getBooksList(searchKey);
            }
        
        //get all reviews
        @Path("/getReviews/")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Reviews> getReviews() {
		return reviewService.getReviews();
	}

        //get all reviews for a bookId
	@Path("/getReviewsBookId/{bookId}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Reviews> getReviewsbyBookId(@PathParam("bookId") int bookId) {
		return reviewService.getReviewsbyBookId(bookId);
	}   
        
        @Path("/saveReview/")
	@POST
	@Produces(MediaType.APPLICATION_JSON)
        @Consumes(MediaType.APPLICATION_JSON)
	public StatusMessage saveReview(Reviews review) {
		return reviewService.saveReview(review);
	}
        
        @Path("/upvoteReview/")
	@POST
	@Produces(MediaType.APPLICATION_JSON)
        @Consumes(MediaType.APPLICATION_JSON)
	public Reviews updateReviewUpvotes(Reviews review) {
		return reviewService.updateReviewUpvotes(review);
	}
        @Path("/downvoteReview/")
	@POST
	@Produces(MediaType.APPLICATION_JSON)
        @Consumes(MediaType.APPLICATION_JSON)
	public Reviews updateReviewDownvotes(Reviews review) {
		return reviewService.updateReviewDownvotes(review);
	}
        
	@Path("/getRatings/")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ratings> getRatings() {
		return ratingservice.getRatings();
	}

	@Path("/getRatingsBookId/{bookId}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ratings> getRatingsBookId(@PathParam("bookId") int bookId) {
		return ratingservice.getRatingsbyBookId(bookId);
	}
        
                        
        @Path("/saveRatings/")
	@POST
	@Produces(MediaType.APPLICATION_JSON)
        @Consumes(MediaType.APPLICATION_JSON)
	public StatusMessage saveRatings(Ratings rate) {
		return ratingservice.saveRating(rate);
	}
        
        @Path("/getUserActivity/{userId}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public UsersActivity getUserActivity(@PathParam("userId") int userId) {
		return userService.getUsersActivity(userId);
	}
        
        
        @Path("/getUserWishList/{userId}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<WishList> getUserWishList(@PathParam("userId") int userId) {
		return wishlistService.getUserWishList(userId);
	}
        
        @Path("/addWishList")
	@POST
	@Produces(MediaType.APPLICATION_JSON)
        @Consumes(MediaType.APPLICATION_JSON)
	public String addWishList(WishList wishList) {
		return wishlistService.addWishList(wishList);
	}
        

}

