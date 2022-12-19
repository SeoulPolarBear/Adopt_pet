package com.polarbear.lim.dao.interfaces;

import java.util.List;

import com.polarbear.lim.dto.Customer;
import com.polarbear.lim.dto.User;

public interface CustomerMapper {

	public abstract List<Customer> getCustomerById(User user);
}
