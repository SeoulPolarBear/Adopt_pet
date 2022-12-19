package com.polarbear.lim.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.polarbear.lim.dao.services.UserDaoService;
import com.polarbear.lim.dto.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDaoService udao;
	
	@RequestMapping(value = "/users/myPage", method = RequestMethod.GET)
	public String getUser(HttpServletRequest req) {
		udao.getUser(req);
		return "myPage";			
	}
	
	@RequestMapping(value = "/users/signup", method = RequestMethod.GET)
	public String toSignUp() {
		return "SignUp";			
	}
	
	@RequestMapping(value = "/users/Resign", method = RequestMethod.GET)
	public String toResign() {
		return "Resign";			
	}
	
	@RequestMapping(value = "/users/ResignUser", method = RequestMethod.POST)
	public String ResignUser(HttpServletRequest req,User user) {
		String result = udao.ResignUser(req, user);
		System.out.println(result);
		req.setAttribute("result", result);
		return "ResignOut";			
	}
	
	@RequestMapping(value = "/users/signup_import", method = RequestMethod.POST)
	public String toSignUp_import(HttpServletRequest req,User user) {
		String result = udao.InsertUser(req, user);
		System.out.println(result);
		req.setAttribute("result", result);
		return "SignUp";			
	}
	
	@RequestMapping(value="/users/signin",method = RequestMethod.GET)
	public String toSignIn() {
		return "SignIn";
	}
	
	@RequestMapping(value="/users/signIn_import",method = RequestMethod.POST)
	public String toSignIn_import(HttpServletRequest req, User user) {
		String result = udao.SignInUser(req, user);
		req.setAttribute("result", result);
		return "SignIn";
	}
	
	@RequestMapping(value="/users/SignOut",method = RequestMethod.GET)
	public String toSignOut(HttpServletRequest req) {
		req.getSession().setAttribute("loginUser", null);
		System.out.println("여기 성공");
		return "SignOut";
	}
}
