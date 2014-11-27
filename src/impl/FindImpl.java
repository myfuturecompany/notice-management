package impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.NoticeBoard;
import beans.Student;

public class FindImpl {

	public Object findUserLogin(String userName, String password, Boolean isAdminLogin) {

		try {
			Configuration cfg = new Configuration();
			cfg.configure("hibernate.cfg.xml");

			SessionFactory factory = cfg.buildSessionFactory();
			Session session = factory.openSession();

			String hql = null;
			String userType = "";

			if (isAdminLogin) {
				hql = "SELECT U.username FROM Admin U WHERE U.username = :userName AND U.pass = :password";
				userType = "ADMIN";
			} else {
				hql = "SELECT U.redgNo FROM Student U WHERE U.redgNo = :userName AND U.pass = :password";
				userType = "STUDENT";
			}

			Query query = session.createQuery(hql);
			query.setString("userName", userName);
			query.setString("password", password);
			Object result = query.uniqueResult();

			if(result != null)
				return userType + "*-*" + result;

		} catch (HibernateException e) {
			e.printStackTrace();
		}

		return null;
	}

	public List<String> findEmailReciepientList() {
		try {
			Configuration cfg = new Configuration();
			cfg.configure("hibernate.cfg.xml");

			SessionFactory factory = cfg.buildSessionFactory();
			Session session = factory.openSession();

			String hql  = "SELECT email FROM Student";
				

			Query query = session.createQuery(hql);
			List<String> result = query.list();

			return result;

		} catch (HibernateException e) {
			e.printStackTrace();
		}

		return null;
		
	}

	public List<Student> fetchDataForStudents() {
		try {
			Configuration cfg = new Configuration();
			cfg.configure("hibernate.cfg.xml");

			SessionFactory factory = cfg.buildSessionFactory();
			Session session = factory.openSession();

			String hql  = "FROM Student";
			
			Query query = session.createQuery(hql);
			List<Student> result = query.list();

			return result;

		} catch (HibernateException e) {
			e.printStackTrace();
		}

		return null;
		
	}

	public List<NoticeBoard> fetchDataForNotice() {
		try {
			Configuration cfg = new Configuration();
			cfg.configure("hibernate.cfg.xml");

			SessionFactory factory = cfg.buildSessionFactory();
			Session session = factory.openSession();

			String hql  = "FROM NoticeBoard ORDER BY noticeDate DESC";
			
			Query query = session.createQuery(hql);
			List<NoticeBoard> result = query.list();

			return result;

		} catch (HibernateException e) {
			e.printStackTrace();
		}

		return null;
		
	}

}
