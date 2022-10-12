package com.example.app.service;

import java.util.List;

import com.example.app.domain.User;

public interface SearchService {
	
	List<User> searchUserAllDetailList(Integer sex) throws Exception;

}
