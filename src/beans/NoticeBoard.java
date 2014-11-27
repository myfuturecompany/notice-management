package beans;

import java.io.Serializable;
import java.util.Date;


/**
 * The persistent class for the notice_board database table.
 * 
 */

public class NoticeBoard implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String notice;
	private Date noticeDate;
	private String noticeFormat;
	private int raisedBy;
	private String subject;

	public NoticeBoard() {
	}



	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}





	public String getNotice() {
		return notice;
	}



	public void setNotice(String notice) {
		this.notice = notice;
	}



	public Date getNoticeDate() {
		return this.noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}


	public String getNoticeFormat() {
		return this.noticeFormat;
	}

	public void setNoticeFormat(String noticeFormat) {
		this.noticeFormat = noticeFormat;
	}


	public int getRaisedBy() {
		return this.raisedBy;
	}

	public void setRaisedBy(int raisedBy) {
		this.raisedBy = raisedBy;
	}


	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

}