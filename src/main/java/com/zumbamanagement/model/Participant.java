package com.zumbamanagement.model;

public class Participant {
	
	String firstname;
	String lastname;
	String email;
	String phone;
	String batch;
	Integer cid;
	String pcode;
	
	public Participant() {
		
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}
	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public Integer getCid() {
		if (cid == null) {
			return 0;
		}
		return cid.intValue();
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Participant(String firstname, String lastname, String email, String phone, String batch, String pcode, int cid) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.batch = batch;
		this.pcode = pcode;
		this.cid = cid;
	}
	public Participant(String firstname, String lastname, String email, String phone, String batch, String pcode) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.batch = batch;
		this.pcode = pcode;
	}
	public Participant(String firstname, String lastname, String email, String phone, String pcode, int cid) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.pcode = pcode;
		this.cid = cid;
		
	}
	
	public Participant(String firstname, String lastname, String email, String phone, int cid) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.cid = cid;
		
	}
	public Participant(int cid, String firstname, String lastname, String email, String phone, String batch) {
		super();
		this.cid = cid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.batch = batch;
		
	}
	public Participant(int cid, String firstname, String lastname, String email, String phone, String batch, String pcode) {
		super();
		this.cid = cid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.batch = batch;
		this.pcode = pcode;
		
	}
	
	
}