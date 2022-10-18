package com.example.app.service;

import java.util.List;

import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;

public interface SearchService {
	
	List<User> searchUserAllDetailList(UserBasicDetail userBD) throws Exception;
	List<User> searchUserAllDetailListDetail(User user) throws Exception;

}
