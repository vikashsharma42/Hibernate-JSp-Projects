package com.rail;

import javax.persistence.*;

@Entity
public class User
{
	@Id
	private String userName;
	private String password;
	private String firstName;
	private String middleName;
	private String lastName;
	private String occupation;
	private String dob;
	private String country;
	private String phone;
	private String city;
	private String pincode;
	private String state;
	private String street;
	private String locality;
	private String email;
	
	public User() {}

	public User(String userName, String password, String firstName, String middleName, String lastName,
			String occupation, String dob, String country, String phone, String city, String pincode, String state,
			String street, String locality, String email)
	{
		this.userName = userName;
		this.password = password;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.occupation = occupation;
		this.dob = dob;
		this.country = country;
		this.phone = phone;
		this.city = city;
		this.pincode = pincode;
		this.state = state;
		this.street = street;
		this.locality = locality;
		this.email = email;
	}

	public String getUserName() 
	{
		return userName;
	}

	public void setUserName(String userName) 
	{
		this.userName = userName;
	}

	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getFirstName() 
	{
		return firstName;
	}

	public void setFirstName(String firstName) 
	{
		this.firstName = firstName;
	}

	public String getMiddleName() 
	{
		return middleName;
	}

	public void setMiddleName(String middleName) 
	{
		this.middleName = middleName;
	}

	public String getLastName() 
	{
		return lastName;
	}

	public void setLastName(String lastName) 
	{
		this.lastName = lastName;
	}

	public String getOccupation() 
	{
		return occupation;
	}

	public void setOccupation(String occupation) 
	{
		this.occupation = occupation;
	}

	public String getDob() 
	{
		return dob;
	}

	public void setDob(String dob)
	{
		this.dob = dob;
	}

	public String getCountry() 
	{
		return country;
	}

	public void setCountry(String country) 
	{
		this.country = country;
	}

	public String getPhone()
	{
		return phone;
	}

	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public String getCity()
	{
		return city;
	}

	public void setCity(String city)
	{
		this.city = city;
	}

	public String getPincode()
	{
		return pincode;
	}

	public void setPincode(String pincode) 
	{
		this.pincode = pincode;
	}

	public String getState() 
	{
		return state;
	}

	public void setState(String state) 
	{
		this.state = state;
	}

	public String getStreet() 
	{
		return street;
	}

	public void setStreet(String street) 
	{
		this.street = street;
	}

	public String getLocality() 
	{
		return locality;
	}

	public void setLocality(String locality) 
	{
		this.locality = locality;
	}

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}
	
}
