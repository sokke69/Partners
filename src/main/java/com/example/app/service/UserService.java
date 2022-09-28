package com.example.app.service;

import java.util.List;

import com.example.app.domain.User;
import com.example.app.domain.UserFreeDetail;
import com.example.app.domain.UserRequiredDetail;

public interface UserService {
	
	List<User> getUserAllDetailList() throws Exception;
	List<String> selectEmailAllUser() throws Exception;
	User getUserById(int i) throws Exception;
	void addUser(User user, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception;
	void editUser(User user, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception;
	void deleteUser(int i) throws Exception;

}
