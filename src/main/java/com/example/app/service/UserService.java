package com.example.app.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.example.app.domain.User;
import com.example.app.domain.UserFreeDetail;
import com.example.app.domain.UserRequiredDetail;

public interface UserService extends UserDetailsService{
	
	List<User> getUserAllDetailList() throws Exception;
	String selectEmail() throws Exception;
	User getUserByLoginId(String loginId) throws Exception;
	void addUser(User user, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception;
	void editUser(User user, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception;
	void deleteUser(int i) throws Exception;

}
