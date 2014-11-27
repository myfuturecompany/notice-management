package beans;

import java.io.Serializable;


/**
 * The persistent class for the student database table.
 * 
 */

public class Student implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private int acedamicYear;
	private String contactNo;
	private String email;
	private String name;
	private String pass;
	private String redgNo;

	public Student() {
	}


	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public int getAcedamicYear() {
		return this.acedamicYear;
	}

	public void setAcedamicYear(int acedamicYear) {
		this.acedamicYear = acedamicYear;
	}


	public String getContactNo() {
		return this.contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}


	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}


	public String getRedgNo() {
		return this.redgNo;
	}

	public void setRedgNo(String redgNo) {
		this.redgNo = redgNo;
	}

}