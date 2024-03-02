package com.admin;

import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class TrainDataBase {
	static Session session;
	static Transaction t;
	static {
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		session = factory.openSession();
		t = session.getTransaction();
	}
	public static void saveTrainRecord(Train train) {
		t.begin();
		session.save(train);
		t.commit();
	}
	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes", })
	public static List<Train> searchTrain(String from, String to) {
		t.begin();
		String hql = "FROM Train WHERE journeyFrom = :fromLocation AND journeyTo = :toLocation";
		Query query = session.createQuery(hql);
		query.setParameter("fromLocation", from);
		query.setParameter("toLocation", to);
		List<Train> tlist = query.list();
		t.commit();
		return tlist;
	}
    @SuppressWarnings({ "deprecation" })
	public static Long TotalCount(String from, String to) {
		String hql = "SELECT COUNT(*) FROM Train WHERE journeyFrom = :fromLocation AND journeyTo = :toLocation";
		Query<Long> query = session.createQuery(hql, Long.class);
		query.setParameter("fromLocation", from);
		query.setParameter("toLocation", to);
		Long result = query.uniqueResult();
		return result;
	}
	public static Train getTrainRecord(int trainNumber) {
		t.begin();
		Train train = (Train) session.createQuery("FROM Train WHERE TrainNumber = :tNumber")
				.setParameter("tNumber", trainNumber).uniqueResult();
		t.commit();
		return train;
	}
	@SuppressWarnings({ "rawtypes", "deprecation" })
	public static void updateSlClass(int trainNumber) {
		t.begin();
		String hql = "UPDATE Train SET SL=SL-:number WHERE TrainNumber = :trainNumber";
		Query query = session.createQuery(hql);
		query.setParameter("trainNumber", trainNumber);
		query.setParameter("number", 1);
		query.executeUpdate();
		t.commit();
	}
	@SuppressWarnings({ "rawtypes", "deprecation" })
	public static void updateAcClass(int trainNumber) {
		t.begin();
		String hql = "UPDATE Train SET Ac=Ac - :number WHERE TrainNumber = :trainNumber";
		Query query = session.createQuery(hql);
		query.setParameter("trainNumber", trainNumber);
		query.setParameter("number", 1);
		query.executeUpdate();
		t.commit();
	}
	@SuppressWarnings({ "rawtypes", "deprecation" })
	public static void updateAccClass(int trainNumber) {
		t.begin();
		String hql = "UPDATE Train SET Acc=Acc - :number WHERE TrainNumber = :trainNumber";
		Query query = session.createQuery(hql);
		query.setParameter("trainNumber", trainNumber);
		query.setParameter("number", 1);
		query.executeUpdate();
		t.commit();
	}
	@SuppressWarnings({ "rawtypes", "deprecation" })
	public static void updateAcccClass(int trainNumber) {
		t.begin();
		String hql = "UPDATE Train SET Accc=Accc - :number WHERE TrainNumber = :trainNumber";
		Query query = session.createQuery(hql);
		query.setParameter("trainNumber", trainNumber);
		query.setParameter("number", 1);
		query.executeUpdate();
		t.commit();
	}
	
	public static void removeDataFromCache()
	{
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Cache cache = factory.getCache();
        cache.evictAll();
        factory.close();
	}
}