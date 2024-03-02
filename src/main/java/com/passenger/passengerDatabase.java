package com.passenger;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;



public class passengerDatabase
{
	static Session session;
	static Transaction t;
	static 
	{
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		session = factory.openSession();
		t = session.getTransaction();
	}

	public static void savePassengerRecord(passengerDetails passenger)
	{
		t.begin();
		session.save(passenger);
		t.commit();
	}
	public static passengerDetails getPassengerRecord(int pnr)
	{
		passengerDetails passenger=session.get(passengerDetails.class, pnr);
		return passenger;
	}
}
