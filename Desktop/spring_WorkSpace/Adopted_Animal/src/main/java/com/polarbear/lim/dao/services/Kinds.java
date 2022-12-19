package com.polarbear.lim.dao.services;

import java.util.List;

import com.polarbear.lim.dto.Kind;

public class Kinds {

	private List<Kind> kinds;

	public Kinds(List<Kind> kinds) {
		super();
		this.kinds = kinds;
	}
	
	public Kinds() {
		// TODO Auto-generated constructor stub
	}

	public List<Kind> getKinds() {
		return kinds;
	}

	public void setKinds(List<Kind> kinds) {
		this.kinds = kinds;
	}
	
}
