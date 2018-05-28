/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author mspav
 */
@Entity
@Table(name = "ratings")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ratings.findAll", query = "SELECT r FROM Ratings r")
    , @NamedQuery(name = "Ratings.findByRatingsId", query = "SELECT r FROM Ratings r WHERE r.ratingsId = :ratingsId")
    , @NamedQuery(name = "Ratings.findByRatings", query = "SELECT r FROM Ratings r WHERE r.ratings = :ratings")})
public class Ratings implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "RatingsId")
    private Integer ratingsId;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "Ratings")
    private Float ratings;    
    @JoinColumn(name = "BookId", referencedColumnName = "BookId")
    @ManyToOne(optional = false)
    private Books bookId;
    @JoinColumn(name = "UserId", referencedColumnName = "UserId")
    @ManyToOne(optional = false)
    private Users userId;

    public Ratings() {
    }

    public Ratings(Integer ratingsId) {
        this.ratingsId = ratingsId;
    }

    public Integer getRatingsId() {
        return ratingsId;
    }

    public void setRatingsId(Integer ratingsId) {
        this.ratingsId = ratingsId;
    }

    public Float getRatings() {
        return ratings;
    }

    public void setRatings(Float ratings) {
        this.ratings = ratings;
    }    
    
    public Books getBookId() {
        return bookId;
    }

    public void setBookId(Books bookId) {
        this.bookId = bookId;
    }

    public Users getUserId() {
        return userId;
    }

    public void setUserId(Users userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ratingsId != null ? ratingsId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ratings)) {
            return false;
        }
        Ratings other = (Ratings) object;
        if ((this.ratingsId == null && other.ratingsId != null) || (this.ratingsId != null && !this.ratingsId.equals(other.ratingsId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "booksite.Ratings[ ratingsId=" + ratingsId + " ]";
    }
    
}
