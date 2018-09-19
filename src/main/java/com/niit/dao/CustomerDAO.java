package com.niit.dao;
import com.niit.model.Customer;
public interface CustomerDAO {
	void registerCustomer(Customer customer);
	boolean isEmailUnique(String email);
}
