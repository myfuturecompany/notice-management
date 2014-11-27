package services;

import impl.FindImpl;
import impl.SaveImpl;
import impl.SendMailSSL;

import java.util.Date;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import beans.NoticeBoard;
import beans.Student;

public class AdminServices {

	public void saveNotice(String subject, String notice){

		try {
			NoticeBoard noticeBoard = new NoticeBoard();

			noticeBoard.setSubject(subject);
			noticeBoard.setNotice(notice);
			noticeBoard.setNoticeDate(new Date());
			noticeBoard.setRaisedBy(1);
			noticeBoard.setNoticeFormat("TEXT");

			SaveImpl impl = new SaveImpl();
			impl.save(noticeBoard);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}


	public void saveAndEmailNotice(String subject, String notice){

		saveNotice(subject,notice);

		try {

			FindImpl impl = new FindImpl();
			List mailIds = impl.findEmailReciepientList();

			SendMailSSL mailer = new SendMailSSL();
			mailer.sendEmail(mailIds, subject, notice);


		} catch (Exception e) {
			e.printStackTrace();
		}


	}

	public void saveAndMSGNotice(String subject, String notice){

		saveNotice(subject,notice);

		try {

			FindImpl impl = new FindImpl();
			List mailIds = impl.findEmailReciepientList();

			SendMailSSL mailer = new SendMailSSL();
			mailer.sendEmail(mailIds, subject, notice);


		} catch (Exception e) {
			e.printStackTrace();
		}


	}
	
	public String populateStudents(){

		try {
			JSONObject result = new JSONObject();
			JSONArray list = new JSONArray();
			

			FindImpl impl = new FindImpl();
			List<Student> studentList = impl.fetchDataForStudents();

			for (Student student: studentList) {
				JSONArray s = new JSONArray();
				
				s.put(student.getRedgNo());
				s.put(student.getName());
				s.put(student.getEmail());
				s.put(student.getContactNo());
				s.put(student.getAcedamicYear());
				list.put(s);
			}
			
			result.put("aoData", list);
			
			
			return result.toString();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;

	}
	
	public String populateNotices(){

		try {
			JSONObject result = new JSONObject();
			JSONArray list = new JSONArray();
			

			FindImpl impl = new FindImpl();
			List<NoticeBoard> noticeList = impl.fetchDataForNotice();

			for (NoticeBoard notice: noticeList) {
				JSONArray s = new JSONArray();
				
				s.put(notice.getId());
				s.put(notice.getSubject());
				s.put(notice.getNotice());
				s.put(notice.getNoticeDate());
				
				list.put(s);
			}
			
			result.put("aoData", list);
			
			
			return result.toString();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;

	}

}
