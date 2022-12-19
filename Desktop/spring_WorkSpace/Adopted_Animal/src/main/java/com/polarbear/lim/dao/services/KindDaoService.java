package com.polarbear.lim.dao.services;


import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.polarbear.lim.dao.interfaces.KindMapper;
import com.polarbear.lim.dto.Kind;

@Service
public class KindDaoService {
	
	@Autowired
	private SqlSession ss;
	
	public Kinds getAllKind(HttpServletRequest req){
		try {
			KindMapper km = ss.getMapper(KindMapper.class);
			for (Kind k : km.getAllKind()) {
				System.out.println(k.getKind_kind());
			}
			return new Kinds(km.getAllKind());
		}
		catch(Exception e) {
			System.out.println("뭔가 안됨");
			e.printStackTrace();
			return null;
		}
	}
	
	public String RegKindbyRegAnimal(HttpServletRequest req, Kind kind){
		try {
			KindMapper km = ss.getMapper(KindMapper.class);
			km.InsertKind(kind);
			return "Kind 등록 성공";
		}
		catch(Exception e) {
			System.out.println("뭔가 안됨");
			e.printStackTrace();
			return "Kind 등록 실패";
		}
	}
	
	public Kinds getAllSpecies(HttpServletRequest req){
		try {
			KindMapper km = ss.getMapper(KindMapper.class);
			for (Kind k : km.getAllSpecies()) {
				System.out.println(k.getKind_sepcies());
			}
			return new Kinds(km.getAllSpecies());
		}
		catch(Exception e) {
			System.out.println("뭔가 안됨");
			e.printStackTrace();
			return null;
		}
	}
}
