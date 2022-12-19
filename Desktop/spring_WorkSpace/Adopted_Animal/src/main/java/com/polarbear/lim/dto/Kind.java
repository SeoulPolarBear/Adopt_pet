package com.polarbear.lim.dto;

import java.math.BigDecimal;

public class Kind {
	private String kind_kind;
	private String kind_sepcies;
	private BigDecimal kind_a_id;
	
	
	public Kind() {
		// TODO Auto-generated constructor stub
	}

	public Kind(String kind_kind, String kind_sepcies, BigDecimal kind_a_id) {
		super();
		this.kind_kind = kind_kind;
		this.kind_sepcies = kind_sepcies;
		this.kind_a_id = kind_a_id;
	}

	public String getKind_kind() {
		return kind_kind;
	}


	public void setKind_kind(String kind_kind) {
		this.kind_kind = kind_kind;
	}


	public String getKind_sepcies() {
		return kind_sepcies;
	}


	public void setKind_sepcies(String kind_sepcies) {
		this.kind_sepcies = kind_sepcies;
	}


	public BigDecimal getKind_a_id() {
		return kind_a_id;
	}


	public void setKind_a_id(BigDecimal kind_a_id) {
		this.kind_a_id = kind_a_id;
	}
	
	
}
