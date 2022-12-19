package com.polarbear.lim.dao.services;

import java.math.BigDecimal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.polarbear.lim.dao.interfaces.UserMapper;
import com.polarbear.lim.dto.User;

@Service
public class UserDaoService {
	
	@Autowired
	private SqlSession ss;

	public void getUser(HttpServletRequest req) {
		try {
			
			User user = (User) req.getSession().getAttribute("loginUser");
			System.out.println(user.getUser_id());
			
			UserMapper um = ss.getMapper(UserMapper.class);
			List<User> you = um.getUserById(user);
			System.out.println(you.get(0).getUser_id());
			req.setAttribute("yours", you);
		} catch (Exception e) {
			e.printStackTrace();	
		}
	}
	
	public String InsertUser(HttpServletRequest req,User user) {
		try {
			user.setUser_star(BigDecimal.ZERO);
			UserMapper um = ss.getMapper(UserMapper.class);
			um.InsertUser(user);
			return "성공";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "실패";
		}
	}
	
	public String ResignUser(HttpServletRequest req,User user) {
		try {
			user.setUser_star(BigDecimal.ZERO);
			UserMapper um = ss.getMapper(UserMapper.class);
			User you = (User)req.getSession().getAttribute("loginUser");
			
			if(user.getUser_id().equals(you.getUser_id())) {
				um.DeleteUser(user);
				req.getSession().setAttribute("loginUser", null);
				return "성공입니다.";
			}
			else {
				return "ID틀렸습니다.";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "실패입니다.";
		}
	}
	
	public String SignInUser(HttpServletRequest req,User user) {
		try {
			UserMapper um = ss.getMapper(UserMapper.class);
			List<User> you = um.getUserById(user);
			
			if(you.isEmpty()) {
				return "ID 다시 입력해 주세요.";
			}else {
				if(you.get(0).getUser_password()
						.equals(user.getUser_password())) {
					req.getSession().setAttribute("loginUser", you.get(0));
					req.getSession().setMaxInactiveInterval(300000);
					return "로그인 성공입니다.";
				}
				else {
					return "비밀번호를 다시 입력해 주세요";
				}
			}	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "ID 혹은 비밀번호를 다시 입력해 주세요";
			
		}
	}
}
