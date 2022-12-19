package com.polarbear.lim.dao.interfaces;

import java.math.BigDecimal;
import java.util.List;

import com.polarbear.lim.dto.Animal;
import com.polarbear.lim.dto.User;

public interface AnimalMapper {

	public abstract List<Animal> getAllAnimal();
	public abstract List<Animal> getUserAnimal(User user);
	public abstract BigDecimal getUserAnimalbyId(User user);
	public abstract List<Animal> getDogAnimal();
	public abstract List<Animal> getCatAnimal();
	public abstract List<Animal> getTurtleAnimal();
	public abstract List<Animal> getRodentAnimal();
	public abstract List<Animal> getFoxAnimal();
	public abstract void RegAnimal(Animal animal);
	public abstract void adoptAnimal(Animal animal);
	
	
}
