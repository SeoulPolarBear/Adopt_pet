package com.polarbear.lim.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.polarbear.lim.dao.services.AnimalDaoService;
import com.polarbear.lim.dao.services.KindDaoService;
import com.polarbear.lim.dto.Animal;
import com.polarbear.lim.dto.Kind;
import com.polarbear.lim.dto.User;

@Controller
public class AnimalController {

	@Autowired
	private AnimalDaoService adao;
	
	@RequestMapping(value = "/animals/myPet", method = RequestMethod.GET)
	public String MyAnimal(HttpServletRequest req) {
		adao.MyAnimal(req);
		return "myPet";			
	}
	
	@RequestMapping(value = "/animals/{animal}", method = RequestMethod.GET)
	public String DogsAnimal(@PathVariable String animal ,HttpServletRequest req) {
		adao.getDogAnimal(req, animal);
		return animal;			
	}
	
	@RequestMapping(value = "/animals/myPet/reg", method = RequestMethod.GET)
	public String MyPetregAnimal(HttpServletRequest req) {
		User user = (User)req.getSession().getAttribute("loginUser");
		System.out.println(user.getUser_id());
		req.setAttribute("animal_u_id", user.getUser_id());
		return "RegAnimal";			
	}
	
	@RequestMapping(value = "/animals/myPet/adopt", method = RequestMethod.GET)
	public String MyPetadoptAnimal(HttpServletRequest req) {
		return "adopt";			
	}
	
	@RequestMapping(value = "/animals/myPet/adopt/adopted", method = RequestMethod.GET)
	public String MyPetadopt(HttpServletRequest req, Animal animal) {
		System.out.println(adao.adoptedAnimal(req, animal));
		return "adopted";			
	}
	
	@RequestMapping(value = "/animals/myPet/reg/registration", method = RequestMethod.GET)
	public String RegistrateAnimal(HttpServletRequest req, Animal animal) {
		String result = adao.RegAnimal(req, animal);
		System.out.println(req.getAttribute("animal_ID"));
		req.setAttribute("result", result);
		return "RegKind";			
	}
}
