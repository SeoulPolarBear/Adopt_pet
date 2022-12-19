package com.polarbear.lim.dao.services;

import java.util.List;

import com.polarbear.lim.dto.Animal;

public class Animals {

	private List<Animal> animals;
	
	public Animals(List<Animal> animals) {
		super();
		this.animals = animals;
	}
	
	public Animals() {
		// TODO Auto-generated constructor stub
	}

	public List<Animal> getAnimals() {
		return animals;
	}

	public void setAnimals(List<Animal> animals) {
		this.animals = animals;
	}
	
	
}
