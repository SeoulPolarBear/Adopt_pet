package com.polarbear.lim.dto;

import java.math.BigDecimal;
import java.util.Date;

public class Comment {
	private BigDecimal comment_num;
	private String comment_u_id;
	private BigDecimal comment_a_id;
	private String comment_title;
	private String comment_description;
	private String comment_registration;
	
	public Comment() {
		// TODO Auto-generated constructor stub
	}
	
	public Comment(BigDecimal comment_num, String comment_u_id, BigDecimal comment_a_id, String comment_title,
			String comment_description, String comment_registration) {
		super();
		this.comment_num = comment_num;
		this.comment_u_id = comment_u_id;
		this.comment_a_id = comment_a_id;
		this.comment_title = comment_title;
		this.comment_description = comment_description;
		this.comment_registration = comment_registration;
	}

	public BigDecimal getComment_num() {
		return comment_num;
	}

	public void setComment_num(BigDecimal comment_num) {
		this.comment_num = comment_num;
	}

	public String getComment_u_id() {
		return comment_u_id;
	}

	public void setComment_u_id(String comment_u_id) {
		this.comment_u_id = comment_u_id;
	}

	public BigDecimal getComment_a_id() {
		return comment_a_id;
	}

	public void setComment_a_id(BigDecimal comment_a_id) {
		this.comment_a_id = comment_a_id;
	}

	public String getComment_title() {
		return comment_title;
	}

	public void setComment_title(String comment_title) {
		this.comment_title = comment_title;
	}

	public String getComment_description() {
		return comment_description;
	}

	public void setComment_description(String comment_description) {
		this.comment_description = comment_description;
	}

	public String getComment_registration() {
		return comment_registration;
	}

	public void setComment_registration(String comment_registration) {
		this.comment_registration = comment_registration;
	}
}
