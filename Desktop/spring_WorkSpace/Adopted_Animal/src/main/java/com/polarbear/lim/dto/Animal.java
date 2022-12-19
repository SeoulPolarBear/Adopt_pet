package com.polarbear.lim.dto;

import java.math.BigDecimal;
import java.util.Date;

public class Animal {

	private BigDecimal animal_id;
	private String animal_u_id;
	private String animal_name;
	private BigDecimal animal_age;
	private String animal_gender;
	private String animal_thumbnail;
	private String animal_registration;
	private String animal_description;
	
	public Animal(BigDecimal animal_id, String animal_u_id, String animal_name, BigDecimal animal_age,
			String animal_gender, String animal_thumbnail, String animal_registration, String animal_description) {
		super();
		this.animal_id = animal_id;
		this.animal_u_id = animal_u_id;
		this.animal_name = animal_name;
		this.animal_age = animal_age;
		this.animal_gender = animal_gender;
		this.animal_thumbnail = animal_thumbnail;
		this.animal_registration = animal_registration;
		this.animal_description = animal_description;
	}
	
	public Animal() {
		// TODO Auto-generated constructor stub
	}

	public BigDecimal getAnimal_id() {
		return animal_id;
	}

	public void setAnimal_id(BigDecimal animal_id) {
		this.animal_id = animal_id;
	}

	public String getAnimal_u_id() {
		return animal_u_id;
	}

	public void setAnimal_u_id(String animal_u_id) {
		this.animal_u_id = animal_u_id;
	}

	public String getAnimal_name() {
		return animal_name;
	}

	public void setAnimal_name(String animal_name) {
		this.animal_name = animal_name;
	}

	public BigDecimal getAnimal_age() {
		return animal_age;
	}

	public void setAnimal_age(BigDecimal animal_age) {
		this.animal_age = animal_age;
	}

	public String getAnimal_gender() {
		return animal_gender;
	}

	public void setAnimal_gender(String animal_gender) {
		this.animal_gender = animal_gender;
	}

	public String getAnimal_thumbnail() {
		return animal_thumbnail;
	}

	public void setAnimal_thumbnail(String animal_thumbnail) {
		this.animal_thumbnail = animal_thumbnail;
	}

	public String getAnimal_registration() {
		return animal_registration;
	}

	public void setAnimal_registration(String animal_registration) {
		this.animal_registration = animal_registration;
	}

	public String getAnimal_description() {
		return animal_description;
	}

	public void setAnimal_description(String animal_description) {
		this.animal_description = animal_description;
	}
	
	
}
