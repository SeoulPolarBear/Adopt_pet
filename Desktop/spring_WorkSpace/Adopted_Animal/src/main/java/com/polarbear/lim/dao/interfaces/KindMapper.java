package com.polarbear.lim.dao.interfaces;

import java.util.List;

import com.polarbear.lim.dto.Animal;
import com.polarbear.lim.dto.Kind;

public interface KindMapper {
	public abstract List<Kind> getAllKind();
	public abstract List<Kind> getAllSpecies();
	public abstract List<Kind> getKindById(Animal animal);
	public abstract void InsertKind(Kind kind);
}
