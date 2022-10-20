package com.example.app.service;

import java.util.List;

import com.example.app.domain.User;

public interface SearchService {
	
	List<User> searchUserAllDetailList(User user) throws Exception;
	List<User> searchUserAllDetailListDetail(User user) throws Exception;

}
