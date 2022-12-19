package com.polarbear.lim.dao.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.polarbear.lim.dao.interfaces.AnimalMapper;
import com.polarbear.lim.dto.Animal;
import com.polarbear.lim.dto.User;

@Service
public class AnimalDaoService {

	@Autowired
	private SqlSession ss;
	
	public String RegAnimal(HttpServletRequest req,Animal animal) {
		try {
			User user = (User)req.getSession().getAttribute("loginUser");
			animal.setAnimal_u_id(user.getUser_id());
			AnimalMapper am = ss.getMapper(AnimalMapper.class);
			System.out.println(user.getUser_id());
			am.RegAnimal(animal);
			req.setAttribute("animal_ID", am.getUserAnimalbyId(user));
			return "pet 등록 성공";
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return "pet 등록 실패";
		}
	}
	
	public String adoptedAnimal(HttpServletRequest req,Animal animal) {
		try {
			User user = (User)req.getSession().getAttribute("loginUser");
			animal.setAnimal_u_id(user.getUser_id());
			AnimalMapper am = ss.getMapper(AnimalMapper.class);
			am.adoptAnimal(animal);
			return "pet 입양 성공";
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return "pet 입양 실패";
		}
	}
	
	public void MyAnimal(HttpServletRequest req) {
		try {
			User user = (User) req.getSession().getAttribute("loginUser");
			AnimalMapper am = ss.getMapper(AnimalMapper.class);
			req.setAttribute("myanimal", am.getUserAnimal(user));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void getDogAnimal(HttpServletRequest req, String animal){
		try {
			AnimalMapper am = ss.getMapper(AnimalMapper.class);
			if(animal.equals("dogs")) {
				req.setAttribute("Animals", am.getDogAnimal());
			}
			else if(animal.equals("cats")) {
				req.setAttribute("Animals", am.getCatAnimal());
			}
			else if(animal.equals("turtles")) {
				req.setAttribute("Animals", am.getTurtleAnimal());
			}
			else if(animal.equals("rodents")) {
				req.setAttribute("Animals", am.getRodentAnimal());
			}
			else if(animal.equals("foxes")) {
				req.setAttribute("Animals", am.getFoxAnimal());
			}
			else {
				System.out.println("실패");
			}
			System.out.println("성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("실패");
		}
	}
}
