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
public class UsersActivity {
    private int userId;
    private String userFName;
    private String userLName;
    private String gender;
    private String phone;
    private String organization;
    private String occupation;
    private Date dob;
    private String profilePic;
    private String blogUrl;
    private String description;
    private String email;
    private String city;
    private String country;
    private List<Ratings> rateAct;
    private List<Reviews> reviewAct;
        public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
        public String getUserFName() {
        return userFName;
    }

    public void setUserFName(String userFName) {
        this.userFName = userFName;
    }

    public String getUserLName() {
        return userLName;
    }

    public void setUserLName(String userLName) {
        this.userLName = userLName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getBlogUrl() {
		return blogUrl;
	}

	public void setBlogUrl(String blogUrl) {
		this.blogUrl = blogUrl;
	}

	public String getProfilePic() {
		return profilePic;
	}

	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
        public List<Ratings> getRateAct()
        {
            return rateAct;
        }
        public void setRateAct(List<Ratings> rateAct)
        {
            this.rateAct = rateAct;
        }
        
        public List<Reviews> getReviewAct()
        {
            return reviewAct;
        }
        public void setReviewAct(List<Reviews> reviewAct)
        {
            this.reviewAct = reviewAct;
        }
}
