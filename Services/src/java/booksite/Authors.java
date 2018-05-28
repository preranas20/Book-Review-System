/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package booksite;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author mspav
 */
@Entity
@Table(name = "authors")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Authors.findAll", query = "SELECT a FROM Authors a")
    , @NamedQuery(name = "Authors.findByAuthorId", query = "SELECT a FROM Authors a WHERE a.authorId = :authorId")
    , @NamedQuery(name = "Authors.findByAuthorName", query = "SELECT a FROM Authors a WHERE a.authorName = :authorName")
    , @NamedQuery(name = "Authors.findByAuthorDescr", query = "SELECT a FROM Authors a WHERE a.authorDescr = :authorDescr")})
public class Authors implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "AuthorId")
    private Integer authorId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "AuthorName")
    private String authorName;
    @Size(max = 5000)
    @Column(name = "AuthorDescr")
    private String authorDescr;
    @JoinTable(name = "bookauthors", joinColumns = {
        @JoinColumn(name = "AuthorId", referencedColumnName = "AuthorId")}, inverseJoinColumns = {
        @JoinColumn(name = "BookId", referencedColumnName = "BookId")})
    @ManyToMany
    private Collection<Books> booksCollection;

    public Authors() {
    }

    public Authors(Integer authorId) {
        this.authorId = authorId;
    }

    public Authors(Integer authorId, String authorName) {
        this.authorId = authorId;
        this.authorName = authorName;
    }

    public Integer getAuthorId() {
        return authorId;
    }

    public void setAuthorId(Integer authorId) {
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

    @XmlTransient
    public Collection<Books> getBooksCollection() {
        return booksCollection;
    }

    public void setBooksCollection(Collection<Books> booksCollection) {
        this.booksCollection = booksCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (authorId != null ? authorId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Authors)) {
            return false;
        }
        Authors other = (Authors) object;
        if ((this.authorId == null && other.authorId != null) || (this.authorId != null && !this.authorId.equals(other.authorId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "booksite.Authors[ authorId=" + authorId + " ]";
    }
    
}
