package com.rail;

import org.hibernate.*;
import org.hibernate.cfg.*;


public class UserDataBase {
	static Session session;
	static Transaction t;
	static {
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		session = factory.openSession();
		t = session.getTransaction();
	}

	public void saveUserRecord(User user) {
		t.begin();
		session.save(user);
		t.commit();
	}

	public boolean loginValidate(String userName, String password) {
		User user;
		try {
			t.begin();
			user = (User) session.createQuery("FROM User U WHERE U.userName = :userName")
					.setParameter("userName", userName).uniqueResult();
			if (user != null && user.getPassword().equals(password)) {
				return true;
			}
			t.commit();
		} catch (Exception e) {
			if (t != null) {
				t.rollback();
			}
			e.printStackTrace();
		}
		return false;
	}

	public User getRecord(String userName) {
		User user = session.get(User.class, userName);
		return user;
	}

	/*@SuppressWarnings({ "rawtypes", "deprecation" })
	public static User getUser(String email, String userName) 
	{
		String hql = "FROM User u WHERE (:userName IS NULL OR u.userName = :userName) AND (:email IS NULL OR u.email = :email)";
		Query query = session.createQuery(hql);
		query.setParameter("userName", userName);
		query.setParameter("email", email);
		User user = (User) query.uniqueResult();
		return user;

	}*/
	
	public static User getUserRecord(String emailId)
	{
		User user=session.get(User.class, emailId);
		return user;
	}
}
