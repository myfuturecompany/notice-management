package beans;

import java.io.Serializable;


/**
 * The persistent class for the admin database table.
 * 
 */

public class Admin implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String pass;
	private String username;

	public Admin() {
	}


	
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
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


	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}