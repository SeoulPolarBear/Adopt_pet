package com.polarbear.lim.dao.interfaces;

import java.util.List;
import com.polarbear.lim.dto.User;

public interface UserMapper {

	public abstract List<User> getAllUser();
	public abstract List<User> getUserById(User user);
	public abstract void InsertUser(User user);
	public abstract void DeleteUser(User user);
	
}
