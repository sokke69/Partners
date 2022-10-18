package com.example.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.mapper.SearchMapper;

@Service
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	SearchMapper searchMapper;

	@Override
	public List<User> searchUserAllDetailList(UserBasicDetail userBD) throws Exception {
		return searchMapper.searchUserAllDetailList(userBD);
	}
	
	@Override
	public List<User> searchUserAllDetailListDetail(User user) throws Exception {
		return searchMapper.searchUserAllDetailListDetail(user);
	}



}
