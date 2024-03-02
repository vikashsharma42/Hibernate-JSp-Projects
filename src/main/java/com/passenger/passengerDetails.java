package com.passenger;

import javax.persistence.*;

@Entity
@Table(name = "PassengerDetails")
public class passengerDetails 
{
	@Id
	@SequenceGenerator(name = "Passenger_seq", initialValue = 5879845, allocationSize = 4584)
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "Passenger_seq")	
	int PNR;
	String bookingDate;	
	String bookingTime;
	String name;
	int age;
	String country;
	String coach;
	int berthNo;
    String JDate;
    String gender;
    double price;	
	String booking;
	String phone;
	int trainNo;
	public passengerDetails(){}
	public passengerDetails(int PNR,String bookingDate, String bookingTime, String name, int age, String country,
			String coach, int berthNo,String jDate, String gender, double price, String booking,String phone,int trainNo) 
	{	
		this.PNR=PNR;
		this.bookingDate = bookingDate;
		this.bookingTime=bookingTime;
		this.name = name;
		this.age = age;
		this.country = country;
		this.coach = coach;
		this.berthNo = berthNo;
		JDate = jDate;
		this.gender = gender;
		this.price = price;
		this.booking = booking;
		this.phone = phone;
		this.trainNo = trainNo;
	}
	
	public int getPNR()
	{
		return PNR;
	}
	public void setPNR(int pNR) 
	{
		PNR = pNR;
	}
	public String getBookingDate() 
	{
		return bookingDate;
	}
	public void setBookingDate(String bookingDate) 
	{
		this.bookingDate = bookingDate;
	}
	public String getBookingTime() 
	{
		return bookingTime;
	}
	public void setBookingTime(String bookingTime) 
	{
		this.bookingTime = bookingTime;
	}
	public String getName() 
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public int getAge()
	{
		return age;
	}
	public void setAge(int age) 
	{
		this.age = age;
	}
	public String getCountry()
	{
		return country;
	}
	public void setCountry(String country) 
	{
		this.country = country;
	}
	public String getCoach()
	{
		return coach;
	}
	public void setCoach(String coach)
	{
		this.coach = coach;
	}
	public int getBerthNo() 
	{
		return berthNo;
	}
	public void setBerthNo(int berthNo)
	{
		this.berthNo = berthNo;
	}
	public String getJDate() 
	{
		return JDate;
	}
	public void setJDate(String jDate) 
	{
		JDate = jDate;
	}
	public String getGender() 
	{
		return gender;
	}
	public void setGender(String gender) 
	{
		this.gender = gender;
	}
	public double getPrice() 
	{
		return price;
	}
	public void setPrice(double price) 
	{
		this.price = price;
	}
	public String getBooking() 
	{
		return booking;
	}
	public void setBooking(String booking) 
	{
		this.booking = booking;
	}
	public String getPhone() 
	{
		return phone;
	}
	public void setPhone(String phone) 
	{
		this.phone = phone;
	}
	public int getTrainNo()
	{
		return trainNo;
	}
	public void setTrainNo(int trainNo) 
	{
		this.trainNo = trainNo;
	}
}
