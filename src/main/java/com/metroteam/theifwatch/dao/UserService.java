package com.metroteam.theifwatch.dao;

import java.util.List;

public interface UserService {

	List<User> getAllUsers();

	void addUser(User body);

	void deleteUserByName(String name);
	
	User getUserByName(String name);

}
