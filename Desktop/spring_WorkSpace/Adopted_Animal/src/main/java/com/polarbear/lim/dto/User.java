package com.polarbear.lim.dto;

import java.math.BigDecimal;
import java.util.Date;

public class User {
	private String user_id;
	private String user_password;
	private String user_email;
	private String user_name;
	private String user_birthday;
	private String user_phonenum;
	private BigDecimal user_address_postnum;
	private String user_address_distance;
	private String user_address_detail;
	private String user_thumbnail;
	private BigDecimal user_star;
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String user_id, String user_password, String user_email, String user_name, String user_birthday,
			String user_phonenum, BigDecimal user_address_postnum, String user_address_distance,
			String user_address_detail, String user_thumbnail, BigDecimal user_star) {
		super();
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_email = user_email;
		this.user_name = user_name;
		this.user_birthday = user_birthday;
		this.user_phonenum = user_phonenum;
		this.user_address_postnum = user_address_postnum;
		this.user_address_distance = user_address_distance;
		this.user_address_detail = user_address_detail;
		this.user_thumbnail = user_thumbnail;
		this.user_star = user_star;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_birthday() {
		return user_birthday;
	}

	public void setUser_birthday(String user_birthday) {
		this.user_birthday = user_birthday;
	}

	public String getUser_phonenum() {
		return user_phonenum;
	}

	public void setUser_phonenum(String user_phonenum) {
		this.user_phonenum = user_phonenum;
	}

	public BigDecimal getUser_address_postnum() {
		return user_address_postnum;
	}

	public void setUser_address_postnum(BigDecimal user_address_postnum) {
		this.user_address_postnum = user_address_postnum;
	}

	public String getUser_address_distance() {
		return user_address_distance;
	}

	public void setUser_address_distance(String user_address_distance) {
		this.user_address_distance = user_address_distance;
	}

	public String getUser_address_detail() {
		return user_address_detail;
	}

	public void setUser_address_detail(String user_address_detail) {
		this.user_address_detail = user_address_detail;
	}

	public String getUser_thumbnail() {
		return user_thumbnail;
	}

	public void setUser_thumbnail(String user_thumbnail) {
		this.user_thumbnail = user_thumbnail;
	}

	public BigDecimal getUser_star() {
		return user_star;
	}

	public void setUser_star(BigDecimal user_star) {
		this.user_star = user_star;
	}
	
	
	
}

