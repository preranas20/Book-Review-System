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
public class Authors {
    private int authorId;
    private String authorName;
    private String authorDescr;

    public Authors() {
    }
    
    public int getAuthorId() {
		return authorId;
	}


	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}


	public String getAuthorName() {
		return authorName;
	}


	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}


	public String getAuthorDescr() {
		return authorDescr;
	}


	public void setAuthorDescr(String authorDescr) {
		this.authorDescr = authorDescr;
	}
    
}
