package com.polarbear.lim.dto;

public class Customer {
	private String customer_id;
	private String customer_u_id;
	private String customer_istag;
	
	public Customer() {
		// TODO Auto-generated constructor stub
	}
	
	public Customer(String customer_id, String customer_u_id, String customer_istag) {
		super();
		this.customer_id = customer_id;
		this.customer_u_id = customer_u_id;
		this.customer_istag = customer_istag;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getCustomer_u_id() {
		return customer_u_id;
	}

	public void setCustomer_u_id(String customer_u_id) {
		this.customer_u_id = customer_u_id;
	}

	public String getCustomer_istag() {
		return customer_istag;
	}

	public void setCustomer_istag(String customer_istag) {
		this.customer_istag = customer_istag;
	}
	
	
	
	}
