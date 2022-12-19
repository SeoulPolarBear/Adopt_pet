package com.polarbear.lim.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.polarbear.lim.dao.services.KindDaoService;
import com.polarbear.lim.dao.services.Kinds;
import com.polarbear.lim.dto.Kind;

@Controller
public class KindController {
	
	@Autowired
	private KindDaoService kdao;
	
	@RequestMapping(value = "/kinds.JSON", method = RequestMethod.GET,
			produces = "application/json;charset=UTF-8")
	public @ResponseBody Kinds getKindsJSON(HttpServletRequest req, HttpServletResponse res) {
		res.addHeader("Access-Control-Allow-Origin", "*");
		return kdao.getAllKind(req);
	}
	
	@RequestMapping(value = "/species.JSON", method = RequestMethod.GET,
			produces = "application/json;charset=UTF-8")
	public @ResponseBody Kinds getSpeciesJSON(HttpServletRequest req, HttpServletResponse res) {
		res.addHeader("Access-Control-Allow-Origin", "*");
		return kdao.getAllSpecies(req);
	}
	
	@RequestMapping(value = "/kinds/myPet/reg/registration", method = RequestMethod.GET)
	public String RegKind(HttpServletRequest req, Kind kind) {
		req.setAttribute("result", kdao.RegKindbyRegAnimal(req, kind));
		return "RegKind";
	}
	
	
}
