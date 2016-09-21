package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;
import com.niit.shoppingcart.model.UserRole;

public interface UserDAO {
	public void saveOrUpdate(UserDetails userDetails,UserRole userRole);
/*
	public List<User> list();
public User get(String id);


public void delete(String id);
public boolean isValidUser(String id,String name, boolean isAdmin);
*/
}
